#include <iostream>
#include <fstream>
#include <vector>
#include <map>
#include "Trie.h"
using namespace std;

void Crawler(const string& Url);
map<string,bool> maps;//global variate to record stop words.

//initialize the URL given by "input.txt"
void Dictionary_Url_init(vector<string>& Old_Url){
    fstream input("input.txt");
    while(!input.eof()){
        string temp;
        input >> temp;
        Old_Url.push_back(temp);
    }
    input.close();
}

//use Crawler to get contents from every URL and put them into "transfer.txt"
//then use "transfer.txt" to insert every non-stop words into Trie tree.
void Dictionary_content_init(Trie& Trie_tree, vector<string>& Old_Url){
    Trie_tree.root = new TrieNode();
    for(int i = 0; i < Old_Url.size(); i++){
        Crawler(Old_Url[i]);
        fstream transfer("transfer.txt", ios::in);
        string temp;
        while(!transfer.eof()){
            transfer >> temp;
            if(maps[temp] == false) {
                Trie_tree.Insert(Trie_tree.root, temp, Old_Url[i]);
            }
        }
        transfer.close();
    }
}

//put every stopword into a hash map
void maps_init(){
    fstream stopwords("stopwords.txt", ios::in);
    string temp;
    while(!stopwords.eof()){
        stopwords >> temp;
        maps[temp] = true;
    }
    stopwords.close();
}

//use merge function to get common URLs for the given keywords.
vector<string> merge_common(const vector<string>& first, const vector<string>& second){
    vector<string> common;
    int i = 0;
    int j = 0;
    int first_size = first.size();
    int second_size = second.size();
    while(i != first_size && j != second_size){
        if(first[i] == second[j])
            common.push_back(first[i]);
        if(first[i] < second[j])
            i++;
        else
            j++;
    }
    return common;
}
//the main function to get common URLs.
void find_common_Url(vector<TrieNode*> keywords_pointer, vector<vector<string>>& Url_related){
    vector<string> common = Url_related[0]; // common is used to save websites without rank
    vector<string> rank_common;//rank_common is used to save websites with rank
    map<string, int> Url_times;//record appearance times of all keywords in this Url
    for(int i = 1; i < Url_related.size(); i++)
        common = merge_common(common,Url_related[i]);

    for(int i = 0; i < common.size(); i++){
        int times = 0;
        for(int j = 0; j < keywords_pointer.size(); j++) {
            times += keywords_pointer[j]->Appear_times[common[i]];;
        }
        Url_times[common[i]] = times;
    }
    rank_common = common;

    for(int i = 0 ; i < rank_common.size() - 1; i++)
        for(int j = 0; j < rank_common.size() - 1; j++){
            if(Url_times[rank_common[j]] < Url_times[rank_common[j + 1]])
                swap(rank_common[j], rank_common[j + 1]);
        }

    cout << '\n';
    fstream output("output.txt", ios::out);
    for(int i = 0; i < rank_common.size(); i++) {
        cout << rank_common[i] << ' ' << Url_times[rank_common[i]] << ' ' << '\n';
        output << rank_common[i] << '\n';
    }
    cout << '\n';
    output.close();
}
int search_flag = 0;
//enter keywords and begin search function in Trie Tree.
//test keywords "I am a good boy and I do not want to get anything #"
void begin_search(const Trie& Trie_tree){

    int search_counts = 0; //record the number of available words
    string temp;
    vector <string> keywords;//save words
    vector <vector<string>> Url_related;//keywords >> Url
    vector <TrieNode* > keywords_pointer;//record the number of appearance times of every word in every website
    TrieNode* node_temp;
    cout << "please enter some keywords, end with #，stop with *\n";
    cin >> temp;
    while(temp != "#"){
        if (temp == "*"){
            search_flag = 1;
            return;
        }
        keywords.push_back(temp);
        if(keywords.size() >= 10){
            cout << "limit queries to 10 words, " << "after \"" << temp << "\" will be ignored.\n";
            while(temp != "#") {
                cin >> temp;
                if (temp == "*"){
                    search_flag = 1;
                    return;
                }
            }
            break;
        }
        cin >> temp;
    }
    for(int i = 0; i < keywords.size(); i++){
        node_temp = Trie_tree.Search(Trie_tree.root,keywords[i]);
        if(node_temp != nullptr) {
            search_counts++;
            Url_related.push_back(node_temp->Url_list);
            keywords_pointer.push_back(node_temp);
        }
        else if(i == keywords.size() - 1 && search_counts == 0){
            cout << "can't find related websites for these keywords\n";
            return;
        }
    }
    find_common_Url(keywords_pointer,Url_related);
}


int main() {
    vector<string> Old_Url;
    Dictionary_Url_init(Old_Url);
    maps_init();
    Trie Trie_tree;
    Dictionary_content_init(Trie_tree, Old_Url);
    while(search_flag == 0) {
        begin_search(Trie_tree);
    }

}
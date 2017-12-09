//
// Created by Ke Ye on 2017/11/9.
//
#include <iostream>
#include "Trie.h"

using namespace std;

char small_letter(const char& character){ return 'a' + character - 'A';}



//constructor
TrieNode::TrieNode(bool Isword) : Isword(Isword){}

//insert a word, associated with current URL at the last character.
void Trie::Insert(TrieNode* root, string& word, string Url){
    TrieNode* temp_root = root;
    int index;
    for(int i = 0; i < word.length(); i++){
        //if it is a capital character, change it to small letter.
        if(word[i] >= 'A' && word[i] <= 'Z') word[i] = small_letter(word[i]);
        //if cureent characater is not alphabet, ignore it and continue doing next step.
        if(word[i] < 'a' || word[i] > 'z') continue;
        //calculate the index for every character from 0 to 25 which is a to z.
        index = word[i] - 'a';
        //if the word doesn't appear before, create it.
        if(temp_root->Node_Child[index] == nullptr) {
            temp_root->Node_Child[index] = new TrieNode();
        }
        temp_root = temp_root->Node_Child[index];
    }
    temp_root->Isword = true;
    temp_root->Appear_times[Url]++;
    int flag = 0;
    for(int i = 0; i < temp_root->Url_list.size(); i++){
        if(Url == temp_root->Url_list[i]) flag = 1;
    }
    //insert the URL at the last character in order.
    if(flag == 0) {
        temp_root->Url_list.push_back(Url);
        for(int i = 0; i < temp_root->Url_list.size() - 1; i++){
            if(Url < temp_root->Url_list[i]){
                for(int j = temp_root->Url_list.size() - 1; j >= i + 1; j--){
                    temp_root->Url_list[j] = temp_root->Url_list[j - 1];
                }
                temp_root->Url_list[i] = Url;
                break;
            }
        }
    }
}

//search for the given word.
TrieNode* Trie::Search(TrieNode* root, string& word) const {
    TrieNode* temp_root = root;
    int index;
    for(int i = 0; i < word.length(); i ++){
        if(word[i] >= 'A' && word[i] <= 'Z') word[i] = small_letter(word[i]);
        if(word[i] < 'a' || word[i] > 'z') ;
            index = word[i] - 'a';
        temp_root = temp_root->Node_Child[index];
        if(temp_root == nullptr) {
            return temp_root;
        }
    }
    if(temp_root->Isword)
        return temp_root;
    return nullptr;
}

Trie::~Trie(){  }
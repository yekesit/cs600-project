# CS600-project
  This is a simple search engine implemented with Trie tree.
# Constructor of the Trie tree
  In the file Trie.h, there are two classes. And the Trie tree is implemented by file Trie.cpp.
### Class TrieNode:
    The node in Trie tree is defined by class TrieNode. And for every node there are some attributes: 
    Isword. Judge if this node represents a word. 
    Node_Child. Save every character. 
    vector<string>. If this node represents a word, this node will be linked to a URL list. 
    map<string,int>. Record the number of appearence times of the word in every URL. 
### Class Trie:
    This class is used to make a Trie tree marked with the root node and two functions:
    void Insert(). Insert a word into the Trie tree, and add the URL in the vector of the last character.
    TrieNode* Search(). Search a word, if it exists, return a pointer linked with a URL list.
# Web Crawler
  In the file Crawler.cpp, implemented by external library Curl. The library is attached on my github, if run the code, please   import the library.
# Running
  There are some functions in file main.cpp.
#### void Dictionary_Url_init
    Save all Urls from the file input.txt 
#### void Dictionary_content_init
    First use Web Crawler to get all contents from the website and put them into file transfer.txt.
    Then read from transfer.txt and insert every valid word into Trie tree.
#### maps_init
    There is a global variate to record stop words, map<string,bool> maps.
    Use this function to initialize the maps and set every value "false".
#### vector<string> merge_common and void find_common_Url
    Both two functoins are used to merge the websites given by Trie tree through searching all keywords.
    After get all common Urls for every keyword, the Urls will be sorted by the number of appearance times of all keywords in     every website.

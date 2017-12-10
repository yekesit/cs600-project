# CS600-project
  This is a simple search engine implemented with Trie tree.
# Constructor of the Trie tree
  In the file Trie.h, there are two classes.
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

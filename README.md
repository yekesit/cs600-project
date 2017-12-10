# CS600-project
  This is a simple search engine implemented with Trie tree.
# Constructor of the Trie tree
  In the file Trie.h, there are two classes.
    Class TrieNode:
               The node in Trie tree is defined by class TrieNode. <br>
    And for every node there are some attributes: <br>
    Isword. Judge if this node represents a word. <br>
    Node_Child. Save every character. <br>
    vector<string>. If this node represents a word, this node will be linked to a URL list. <br>
    map<string,int>. Record the number of appearence times of the word in every URL. <br>
    

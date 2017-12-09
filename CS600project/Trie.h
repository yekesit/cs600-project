//
// Created by Ke Ye on 2017/11/9.
//

#pragma once

#include <iostream>
#include <vector>
#include <map>

class TrieNode{
public:
    //judge whether this node represents a word
    bool Isword;

    //every node has child from a to z and A to Z
    TrieNode* Node_Child[26] = {nullptr};

    //if this node is a word, it will be linked with a list which is a list of Url
    std::vector<std::string> Url_list;

    //constructor
    TrieNode(bool Isword = false);

    //count how many times the word occurs in this Url
    std::map<std::string, int> Appear_times;


};

class Trie{
public:
    TrieNode* root;

    //postorder traversal to release space for every node
    ~Trie();

    //insert a word with its Url
    void Insert(TrieNode* root, std::string& word, std::string Url);

    //search a string, if it exists, return the Url list.
    TrieNode* Search(TrieNode* root, std::string& word) const ;

};

#ifndef FAST_BERN_VOCABULARY_H
#define FAST_BERN_VOCABULARY_H

#include <iostream>
#include <string>
#include <sstream>
#include <unordered_map>
#include "Node.h"
#include <vector>
#include <fstream>

using namespace std;

class Vocabulary {
private:
    unordered_map <string, int> node2Id;
    vector <Node> vocab_items;
    int total_nodes;

public:
    Vocabulary(string file_path);
    int getTotalNodes();
    unsigned long getVocabSize();
    vector <int> getNodeCounts();
    vector <Node> getVocabItems();
    unordered_map <string, int> getNode2Id();




};


#endif //FAST_BERN_VOCABULARY_H

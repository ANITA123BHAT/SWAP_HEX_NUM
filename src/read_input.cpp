#include<iostream>
#include  "../include/swap_hexa.h"
using namespace std;
void 
Swaphex::read_input(string filename){
    ifstream inputFile(filename);
    if(!inputFile.is_open()){
        cout<<"Error opening the file: " << filename <<endl;
        exit(0);
    } 
    string input;
    while(getline(inputFile,input)){
        if(input.empty() || input[0]=='#'){
            continue;
        }
        // Check if the input has the '0x' prefix and remove it
        if (input.substr(0, 2) == "0x") {
            input = input.substr(2);
        }

        // Pad the input with leading zeros to ensure even length
        hex_vector.push_back(input);
    }
    inputFile.close();

}
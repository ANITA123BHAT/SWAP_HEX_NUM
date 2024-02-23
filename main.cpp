#include<iostream>
#include "./include/swap_hexa.h"
using namespace std;

int 
main(int argc,char* argv[]){
    Swaphex swap1;
    if(argc!=2){
       cout<<"Usage:<./program_name> <file_name.txt>"<<endl;
       return -1;
    }
    string fileName(argv[1]);
    swap1.read_input(fileName);
    for(auto i:swap1.hex_vector){
        string rev_value=swap1.reverseHex(i);
        swap1.display(rev_value);
    }
    return 0;
}

/*
g++ main.cpp ./src/read_input.cpp ./src/display.cpp ./src/reverseHex.cpp -o main
./main input.txt
*/



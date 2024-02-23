#ifndef SWAP_HEXA
#define SWAP_HEXA
#include<string>
#include<vector>
#include<fstream>
class Swaphex{
    private:
    std::string hex_val;
    public:
    std::vector<std::string>hex_vector;
    Swaphex();
    void read_input(std::string);
    void display(std::string);
    std::string reverseHex(const std::string&);
    ~Swaphex();
};
#endif

#include<iostream>
#include "../include/swap_hexa.h"
using namespace std;

// Function to reverse the hexadecimal number byte-wise
std::string
Swaphex::reverseHex(const std::string& hexString) {
    std::string reversedHexString = hexString;
    int startIdx = 0;
    int endIdx = hexString.length() - 2; // Taking length - 2 to ignore the 'x' character

    while (startIdx < endIdx) {
        std::swap(reversedHexString[startIdx], reversedHexString[endIdx]);
        std::swap(reversedHexString[startIdx + 1], reversedHexString[endIdx + 1]);
        startIdx += 2;
        endIdx -= 2;
    }
    return reversedHexString;
}

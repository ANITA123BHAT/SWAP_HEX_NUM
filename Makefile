# CPP=g++
# CPPFLAG=-Wall

# INCLUDE=include 
# SRC=src 

# main: main.o $(SRC)/read_input.o $(SRC)/reverseHex.o $(SRC)/display.o
# 	$(CPP) $(CPPFLAG) main.o $(SRC)/read_input.o $(SRC)/reverseHex.o $(SRC)/display.o -o main

# main.o : main.cpp $(INCLUDE)/swap_hexa.h 
# 	$(CPP) $(CPPFLAG) -c main.cpp -o main.o

# $(SRC)/read_input.o : $(SRC)/read_input.cpp $(INCLUDE)/swap_hexa.h 
# 	$(CPP) $(CPPFLAG) -c $(SRC)/read_input.cpp -o $(SRC)/read_input.o

# $(SRC)/reverseHex.o : $(SRC)/reverseHex.cpp $(INCLUDE)/swap_hexa.h 
# 	$(CPP) $(CPPFLAG) -c $(SRC)/reverseHex.cpp -o $(SRC)/reverseHex.o 

# $(SRC)/display.o : $(SRC)/display.cpp $(INCLUDE)/swap_hexa.h
# 	$(CPP) $(CPPFLAG) -c $(SRC)/display.cpp -o $(SRC)/display.o 

# clean:
# 	rm -r $(SRC)/*.o main 

CPP=g++
CPPFLAG=-Wall -I$(INCLUDE)

INCLUDE=include 
SRC=src 

main: main.o $(SRC)/read_input.o $(SRC)/reverseHex.o $(SRC)/display.o
	$(CPP) $(CPPFLAG) main.o $(SRC)/read_input.o $(SRC)/reverseHex.o $(SRC)/display.o -o main

main.o : main.cpp $(INCLUDE)/swap_hexa.h 
	$(CPP) $(CPPFLAG) -c main.cpp -o main.o

$(SRC)/read_input.o : $(SRC)/read_input.cpp $(INCLUDE)/swap_hexa.h 
	$(CPP) $(CPPFLAG) -c $(SRC)/read_input.cpp -o $(SRC)/read_input.o

$(SRC)/reverseHex.o : $(SRC)/reverseHex.cpp $(INCLUDE)/swap_hexa.h 
	$(CPP) $(CPPFLAG) -c $(SRC)/reverseHex.cpp -o $(SRC)/reverseHex.o 

$(SRC)/display.o : $(SRC)/display.cpp $(INCLUDE)/swap_hexa.h
	$(CPP) $(CPPFLAG) -c $(SRC)/display.cpp -o $(SRC)/display.o 

clean:
	rm -r $(SRC)/*.o main 

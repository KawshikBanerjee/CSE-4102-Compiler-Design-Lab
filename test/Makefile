output: dekhi.o message.o
	g++ dekhi.o message.o -o output

dekhi.o: dekhi.cpp
	g++ -c dekhi.cpp

message.o: message.cpp message.h
	g++ -c message.cpp

clean:
	rm *.o output 
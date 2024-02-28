./build/target/calculator: ./src/calculator.l ./src/calculator.y
	rm -r -f ./build
	mkdir build
	mkdir ./build/target
	bison -d -o ./build/calculator.tab.c ./src/calculator.y
	flex -o ./build/lex.yy.c ./src/calculator.l
	gcc -o $@ ./build/calculator.tab.c ./build/lex.yy.c -lfl
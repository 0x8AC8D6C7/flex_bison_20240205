./build/target/test-input : ./src/test-input.l
	rm -rf ./build
	mkdir build
	mkdir ./build/target
	flex -o ./build/lex.yy.c ./src/test-input.l
	gcc -o $@ ./build/lex.yy.c
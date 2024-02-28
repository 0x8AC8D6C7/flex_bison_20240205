./build/target/include-file: ./src/include-file.l
	rm -r -f ./build
	mkdir build
	mkdir ./build/target
	flex -o ./build/lex.yy.c ./src/include-file.l
	gcc -o $@ ./build/lex.yy.c
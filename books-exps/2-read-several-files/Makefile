./build/target/read-file: ./src/read-file.l
	rm -r -f ./build
	mkdir build
	mkdir ./build/target
	flex -o ./build/lex.yy.c ./src/read-file.l
	gcc -o $@ ./build/lex.yy.c -lfl
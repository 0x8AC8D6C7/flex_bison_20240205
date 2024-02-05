./build/target/demo: ./src/demo.l ./src/demo.y
	rm -r ./build
	mkdir build
	mkdir ./build/target
	bison -d -o ./build/demo.tab.c ./src/demo.y
	flex -o ./build/lex.yy.c ./src/demo.l
	gcc -o $@ ./build/demo.tab.c ./build/lex.yy.c -lfl
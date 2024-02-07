%{
    #include "stdio.h"

    void output(int result) {
        printf("decimal: = %d, heximal:= ", result);
        /**"%#hX" is used to output an unsigned number, which requires additional processing
          *when the result is negative. Although signed hexadecimal numbers don't make much sense
          */
        if(result < 0) printf("-%#hX\n",-result);
        else printf("%#hX\n",result);
    }
%}

%token NUMBER
%token ADD SUB MUL DIV ABS
%token EOL
%token OP CP

%%

calclist: /*notihing*/
 | calclist exp EOL { output($2); }
 | calclist EOL {/*do nothing*/}
 ;

exp: factor
 | exp ADD factor { $$ = $1 + $3;}
 | exp SUB factor { $$ = $1 - $3;}
 ;

factor: term
 | factor MUL term { $$ = $1 * $3; }
 | factor DIV term { $$ = $1 / $3; }
 ;

term: NUMBER
 | ABS term { $$ = $2 >= 0 ? $2 : -$2; }
 | OP exp CP { $$ = $2;}
 ;

%%

int main(int argc, char **argv) {
    yyparse();
    return 0;
}

void yyerror(char *s) {
    fprintf(stderr, "error:: %s\n", s);
}
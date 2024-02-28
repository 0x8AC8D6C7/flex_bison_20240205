%{
    #include "calculator.tab.h"
%}
%%
"+" {return ADD;}
"-" {return SUB;}
"*" {return MUL;}
"/" {return DIV;}
"|" {return ABS;}
"(" {return OP;/*Open Parenthesis*/}
")" {return CP;/*Close Parenthesis*/}
"//".* {/*ignore comments*/}
[0-9]+ {yylval = atoi(yytext); return NUMBER;}
0[Xx][0-9A-Fa-f]+ {yylval = strtol(yytext,NULL,16); return NUMBER;}
\n {return EOL;}
[ \t] { /* ignore whitespace */ }
. { printf("Mystery character %c\n", *yytext); }
%%
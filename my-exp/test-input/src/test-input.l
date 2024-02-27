%option noyywrap
%option nodefault
%option yylineno
%option case-insensitive

%x TEST

%%
^"::TEST "            {  
                          BEGIN(TEST);
                          fprintf(yyout,"%d : begin test.\n",yylineno);
                      }
<TEST>[^ \n\t]+       { 
                          fprintf(yyout,"<TEST>::content: %s\n", yytext);
                          {
                              char c;
                              while((c=input())&&c!='\n');
                              unput('\n');/* give back the '\n' */
                          }
                      }
<TEST>[ \t]+          { fprintf(yyout,"<TEST>::ignore spaces\n"); }
<TEST>\n              {
                          BEGIN(INITIAL);
                          fprintf(yyout,"begin initial.\n\n");
                      }
.                     ;
\n                    ;
%%
int main(int argc, char** argv) {
    FILE* f = fopen(argv[1], "r");
    yyin = f;
    yylex();
    return 0;
}
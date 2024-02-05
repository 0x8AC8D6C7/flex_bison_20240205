%{
    int words = 0;
    int spaces = 0;
%}

%%
[a-zA-Z]+ { ++ words; }
[ \t] { ++spaces; }
%%

int main(int argc, char **args) {
    yylex();
    putchar(10);
    printf("words: %d\n",words);
    printf("spaces: %d\n",spaces);
}
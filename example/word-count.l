%{
    int word_count = 0;
    int line = 0;
    int chars = 0;
%}

%%
[a-zA-Z]+ {word_count++;chars += strlen(yytext);}
\n {++line; ++chars;}
. {++chars;}
%%

int main(void) {
    yylex();
    printf("lines: %d\n",line + 1);
    printf("word count: %d\n",word_count);
    printf("chars: %d\n",chars);
}
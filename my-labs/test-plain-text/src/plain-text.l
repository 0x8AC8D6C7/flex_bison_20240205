%{
    int colors = 0;
%}
%%
"red"|"orange"|"yellow"|"green"|"cyan"|"blue"|"purple" ++colors;
. {}
\n {}

%%

int main() {
    yylex();
    putchar(10);
    printf("colors: %d\n",colors);
}
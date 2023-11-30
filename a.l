%{
#include <stdio.h>
%}

%%

^[0-9]{10}$ { printf("Valid mobile number\n"); }
^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$ { printf("Valid URL\n"); }
^[a-zA-Z_][a-zA-Z0-9_]*$ { printf("Valid identifier\n"); }
^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[0-2])\/\d{4}$ { printf("Valid date (dd/mm/yyyy)\n"); }
^([01][0-9]|2[0-3]):[0-5][0-9]:[0-5][0-9]$ { printf("Valid time (hh:mm:ss)\n"); }

.|\n { /* Ignore other characters */ }

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}

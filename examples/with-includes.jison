
/* 
 * description: Grammar showing the `%include` feature in both lexer and parser.
 * The grammar itself is a copy of the precedence grammar which shows precedence operators 
 * and semantic actions. 
 */

%lex

%options ranges


digits          [0-9]
alpha           [a-zA-Z]|{digits}
space           " "
whitespace      \s


%include with-includes.prelude1.js

%%

{whitespace}+   {/* skip whitespace */}
[{digits}]+     %include "with-includes.returnNAT.js"  // demonstrate the ACTION block include and the ability to comment on it right here.
[{digits}{alpha}]+     { console.log("buggerit millenium hands and shrimp!"); }

"+"             {return '+';}
"-"             {return '-';}
"*"             {return '*';}
<<EOF>>         {return 'EOF';}

%%

%include with-includes.prelude2.js

/lex

%left '+' '-'
%left '*'
%left UNARY_PLUS UNARY_MINUS

%include with-includes.prelude3.js

%%

%include with-includes.prelude4.js

S
    : e EOF
        {return $1;}
    ;

e
    : e '+' e
        {$$ = [$1, '+', $3];}
    | e '-' e
        {$$ = [$1, '-', $3];}
    | e '*' e
        {$$ = [$1, '*', $3];}
    | '+' e                     %prec UNARY_PLUS 
        {$$ = ['+', $2];}
    | '-' e                     %prec UNARY_MINUS 
        {$$ = ['-', $2];}
    | NAT
        %include "with-includes.parseInt.js"  // demonstrate the ACTION block include and the ability to comment on it right here.
    ;


%%

%include with-includes.main.js

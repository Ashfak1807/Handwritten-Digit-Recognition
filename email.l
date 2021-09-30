%%

[0-9.a-z]{2,}@[a-z]{4,}(\.[a-z]{2,})+ {printf("\nEmail Id Valid\n");}

.+ {printf("\nEmail Id Invalid\n");}

%%

int main()
{
            printf("\nEnter Email Id : ");

            yylex();

            printf("\n");
                    
}
int yywrap()
{	
    return 0;
}
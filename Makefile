aql:
	rm -f aql.lex.c aql.tab.* aql.output aql
	flex -o aql.lex.c aql.lex
	bison -Wcounterexamples -o aql.tab.c -vd aql.y 
	cc -o aql aql.lex.c aql.tab.c ast.c -lm -ll -O3
clean:
	rm -f aql.lex.c aql.tab.* aql.output aql

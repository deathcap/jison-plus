#
# You can build each example to its own directory in ./output/<example>
#

JISON = node ../lib/cli.js -o ./output/$@/ --main

ALL_TARGETS =  													\
			ansic 												\
			basic 												\
			basic2 												\
			basic2_lex 											\
			basic_lex 											\
			bloop 												\
			calculator 											\
			calc_LA_on_demand									\
			calculator_json 									\
			classy 												\
			classy_ast 											\
			comments 											\
			dism 												\
			dism_lr0 											\
			formula 											\
			handlebars 											\
			inherited_y 										\
			jscore 												\
			issue-254											\
			issue-293											\
			json_js 											\
			json_ast_js 										\
			lambdacalc 											\
			nv_classy_ast 										\
			phraser 											\
			precedence 											\
			reduce_conflict 									\
			semwhitespace 										\
			tikiwikiparser 										\
			mermaid												\
			with-includes 										\
			with_custom_lexer									\
			dot 												\
			flow 												\
			gantt 												\
			grammar 											\
			lex


all: $(ALL_TARGETS)

.PHONY: all clean superclean $(ALL_TARGETS)

clean:
	-rm -rf output/

superclean: clean


ansic:
	$(JISON) ./$@.jison

basic:
	$(JISON) ./$@.jison

basic2:
	$(JISON) ./$@.jison

basic2_lex:
	$(JISON) ./$@.jison

basic_lex:
	$(JISON) ./$@.jison

bloop:
	$(JISON) ./$@.y ./floop.l

# cannot compile a lexer on its own, so we provide a bogus grammar to go with that.
floop:
	$(JISON) floop-standalone.y ./$@.l

calculator:
	$(JISON) ./$@.jison

calc_LA_on_demand:
	$(JISON) ./$@.jison

calculator_json:
	$(JISON) ./calculator.json

classy:
	$(JISON) ./$@.jison ./classy.jisonlex

# test input file: classy_test.src
classy_ast:
	$(JISON) ./$@.jison

comments:
	$(JISON) ./$@.jison

dism:
	$(JISON) ./$@.jison

dism_lr0:
	$(JISON) ./$@.jison

# ./documentation--custom-lexer-NIL.js
# ./documentation--custom-lexer-ULcase.js
# ./documentation--mygenerator.js

formula:
	$(JISON) ./$@.jison

handlebars:
#	$(JISON) ./handlebars.jison.y ./handlebars.jison.l

inherited_y:
	$(JISON) ./inherited.y

# build *AND* run the test:
issue-254:
	$(JISON) ./$@.jison
	node ./output/$@/$@.js

# build *AND* run the test:
issue-293:
	$(JISON) ./$@.jison
	node ./output/$@/$@.js

jscore:
	$(JISON) ./$@.jison

json_js:
#	$(JISON) ./json.js

json_ast_js:
#	$(JISON) ./json_ast.js

lambdacalc:
	$(JISON) ./$@.jison

nv_classy_ast:
	$(JISON) ./$@.jison

phraser:
	$(JISON) ./$@.jison

precedence:
	$(JISON) ./$@.jison

reduce_conflict:
	$(JISON) ./$@.jison

# input tst file:  ./semwhitespace_ex.src
semwhitespace:
	$(JISON) ./$@.jison semwhitespace_lex.jison

tikiwikiparser:
	$(JISON) ./$@.jison

mermaid:
	$(JISON) ./$@.jison

dot:
	$(JISON) ./$@.jison

flow:
	$(JISON) ./$@.jison

gantt:
	$(JISON) ./$@.jison

with-includes:
	$(JISON) ./$@.jison

with_custom_lexer:
	$(JISON) ./$@.jison

grammar:
	$(JISON) ./$@.jison

lex:
	$(JISON) ./$@.jison lex_grammar.jisonlex


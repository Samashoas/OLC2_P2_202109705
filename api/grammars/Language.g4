grammar Language;

program:  dcl* ;

dcl: varDcl 
	| funcDcl
	| structDcl
	| stmt
;

varDcl: 'var' ID TYPE '=' expr 		 	#VarImpExpr
| 'var' ID TYPE 			   		 	#VarImpNoExpr
| ID (':=') expr 			   		 	#ImpDer
| ID ':=' '[]' TYPE '{' args '}' 	 	#SliceDcl
| ID '[]' TYPE 						 	#SliceVacio
| ID ':=' '[][]' TYPE '{' listaArg '}' 	#MatrixDcl
| ID ID '=' '{' structArgs '}' ';'?      #StructVarDcl
;

listaArg: '{' args '}' ','? ( '{' args '}' ','? )*;

funcDcl: 'func' ID '(' funcParams? ')' TYPE? '{' dcl*'}' 
;

structDcl: 'struct' ID '{' structParams+ '}'
;

structParams: (TYPE | ID) ID ';'?
;

funcParams: paramDcl (',' paramDcl)*
;

paramDcl: ID TYPE
;

stmt: expr    																	#ExprStmt
	| 'fmt.Println('(expr(',' expr)*)?')'     									#PrintStmt
	| '{' dcl* '}'																#BlockStmt
	| 'if' condition stmt ('else' stmt)? 										#IfStmt
	| 'for' (forInit ';' expr ';' expr | condition | rangeInit) stmt			#ForStmt
	| 'switch' expr '{' switchCase* '}'											#SwitchStmt
	| 'continue'																#ContinueStmt
	| 'break'																	#BreakStmt
	| 'return' expr?															#ReturnStmt
;

switchCase: 'case' expr ':' stmt*	 #CaseClause
		  | 'default' ':' stmt*		#DefaultClause
;

rangeInit: ID ',' ID ':=' 'range' expr
;

forInit: varDcl 
  | expr  
;

condition: '(' expr ')'							
| expr;

expr:
	  '(' expr ')'								# Parens
	| FLOAT										# Float
	| INT										# Integer
	| BOOL										# Boolean
	| RUNE										# Rune
	| STRING									# String
	| ID										# Identifier
	|'{' structArgs '}'                        	# StructLiteral

	// Accesos y llamadas
	| expr call+								# Caller
	| ID '[' expr ']' '[' expr ']' '=' expr		# MatrixUpdate
	| ID '[' expr ']' '[' expr ']'				# MatrixAccess
	| ID '[' expr ']' '=' expr					# ArrayUpdate
	| ID '[' expr ']'							# ArrayAccess
	| expr '.' ID (';')?							# StructAccessInfo
	| ID '.' ID '=' expr ';'?						# StructUpdate
	| TYPE ID '=' ID '.' ID	';'?					# StructAccess
	| ID ID '=' '{' structArgs '}' ';'?			# StructAssignment

	// Funciones integradas
	| 'len' '(' ID ')'							# Len
	| 'len' '(' ID '[' expr ']' ')'				# LenMatrix
	| 'append' '(' ID ',' ID ')'				# MatrixAppend
	| 'append' '(' ID ',' expr ')'				# Append
	| 'slices.Index' '(' ID ',' expr ')'		# SliceIndex
	| 'strings.Join' '(' ID ',' expr ')'       	# StringJoin
	| 'strconv.Atoi' '(' expr ')'				# AtoiStmt
	| 'strconv.ParseFloat' '(' expr ')'			# ParseFloatStmt
	| 'reflect.TypeOf' '(' expr ')'				# TypeOfStmt

	// Unarios
	| op = ('-'|'!') expr						# Negate
	| ID op = ('++' | '--')						# IncDec

	// Aritméticos
	| expr op = ('*' | '/' | '%') expr			# MDmod
	| expr op = ('+' | '-') expr				# AddSub

	// Relacionales y de igualdad
	| expr op = ('<' | '>' | '<=' | '>=') expr	# Relational
	| expr op = ('==' | '!=') expr				# Equality

	// Lógicos
	| expr '&&' expr							# LogicalAnd
	| expr '||' expr							# LogicalOr

	// Asignaciones
	| ID op = ('+='|'-=') expr					# ImplicitAddSub
	| expr '=' expr	';'?							# Assignment
;


call: '(' args? ')'
;

args: expr (',' expr)*
;

structArgs: ID ':' expr (',' ID ':' expr)*
;

TYPE : 'int' | 'float64' | 'bool' | 'string' | 'rune';
BOOL: 'true' | 'false';
FLOAT: [0-9]+ '.' [0-9]+;
INT: [0-9]+;

STRING: '"' (ESC_SEQ | ~[\\\r\n"])* '"';
RUNE: '\'' (ESC_SEQ | ~[\\\r\n']) '\'';

fragment ESC_SEQ
    : '\\' ["\\/nrt] 
;

ID: [a-zA-Z_] [a-zA-Z0-9_]*;
WS: [ \t\r\n]+ -> skip;
COMMENT: '//' ~[\r\n]* -> skip;
ML_COMMENT: '/*' .*? '*/' -> skip;
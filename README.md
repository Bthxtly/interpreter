# C Interpreter in Python

**This project is aimed to run C language on an interpreter likely, as an exercise of [Let's Build a Simple Interpreter](https://ruslanspivak.com/lsbasi-part1/).**

## Part 1

**Target: receive an expression and output its result.**

**Examples:**

```py
>>> 1 + 1
2
>>> 6 * 3
18
>>> 5 + 2 * 3
11
>>> ( 5 + 2 ) * 3
21
```

**Implementation:**

* Token
    - type, name

* Lexer
    - text, pos, current_char
    - advance ()
    - skip_whitespace()
    - integer()
    - error()
    - get_next_token()

* Parser
    - lexer, current_token
    - eat()
    - error()
    - expr()
    - term()
    - factor()
    - parse()

* AST
    - Num
    - BinOp
    - Unary

* NodeVisiter
    - visit()

* Interpreter
    - visit_{AST_nodes}

## Part 2

**Target: implement *Lexer.get_next_token()***

**Examples:**

 ```C
/*example.c*/
int main(){
    int a;
    a = 3 + 2;
    return 0;
}
>>> python part2.py example.c
(Token(TokenType.INT, int)
(Token(TokenType.ID, main)
(Token(TokenType.LPAREN, ()
(Token(TokenType.RPAREN, ))
(Token(TokenType.LBRACE, {)
(Token(TokenType.INT, int)
(Token(TokenType.ID, a)
(Token(TokenType.SEMI, ;)
(Token(TokenType.ID, a)
(Token(TokenType.ASSIGN, =)
(Token(TokenType.INTEGER_CONST, 3)
(Token(TokenType.PLUS, +)
(Token(TokenType.INTEGER_CONST, 2)
(Token(TokenType.SEMI, ;)
(Token(TokenType.ID, return)
(Token(TokenType.INTEGER_CONST, 0)
(Token(TokenType.SEMI, ;)
(Token(TokenType.RBRACE, })
```

## Part 3

**Target: build an *AST* with parser**

**Grammar:**

```AST
  function              : type ID LPAREN RPAREN compound_statement

  compound_statement    : LBRACE statement_list RBRACE

  statement_list        : statement
                        | statement statement_list

  statement             : declaration_statement
                        | assighment_statement
                        | return_statement
                        | compound_statement

  declaration_statement : variable_declatation SEMI

  variable_declatation  : type ID

  assighment_statement  : variable ASSIGN expr SEMI

  variable              : ID

  expr                  : term ((PLUS|MINUS) term)*

  term                  : factor ((MUL|DIV) factor)*

  factor                : variable
                        | INTEGER

  return_statement      : RETURN expr SEMI
```

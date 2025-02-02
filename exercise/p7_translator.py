###############################################################################
#   LEXER                                                                     #
###############################################################################
INTEGER, PLUS, MINUS, MUL, DIV = "INTEGER", "PLUS", "MINUS", "MUL", "DIV"
LPAREN, RAPAREN = "LPAREN", "RAPAREN"
EOF = "EOF"


class Token(object):
    def __init__(self, type, value) -> None:
        self.type = type
        self.value = value

    def __str__(self) -> str:
        return f'Token({self.type}, "{self.value}")'

    def __repr__(self) -> str:
        return self.__str__()


class Lexer(object):
    def __init__(self, text) -> None:
        self.text = text
        self.len = len(self.text)
        self.index = 0
        self.current_char = self.text[self.index]

    def error(self) -> None:
        raise Exception("Failed to lexeme!")

    def advance(self) -> None:
        if self.current_char == EOF:
            self.error()
        elif self.index == self.len - 1:
            self.current_char = EOF
        else:
            self.index += 1
            self.current_char = self.text[self.index]

    def skip_whitespace(self) -> None:
        while self.current_char.isspace():
            self.advance()

    def get_number(self) -> int:
        result = ""
        while self.current_char.isdigit():
            result += self.current_char
            self.advance()
        return int(result)

    def get_next_token(self) -> Token:
        while self.current_char != EOF:
            if self.current_char.isspace():
                self.skip_whitespace()
            elif self.current_char.isdigit():
                return Token(INTEGER, self.get_number())
            elif self.current_char == "+":
                self.advance()
                return Token(PLUS, "+")
            elif self.current_char == "-":
                self.advance()
                return Token(MINUS, "-")
            elif self.current_char == "*":
                self.advance()
                return Token(MUL, "*")
            elif self.current_char == "/":
                self.advance()
                return Token(DIV, "/")
            elif self.current_char == "(":
                self.advance()
                return Token(LPAREN, "(")
            elif self.current_char == ")":
                self.advance()
                return Token(RAPAREN, ")")
            else:
                self.error()
        return Token(EOF, "EOF")


###############################################################################
#   PARSER                                                                    #
###############################################################################
class AST:
    ...


class NumNode(AST):
    def __init__(self, value) -> None:
        self.value = value


class UniNode(AST):
    def __init__(self, node, op) -> None:
        self.node = node
        self.op = op


class DuoNode(AST):
    def __init__(self, lnode, rnode, op) -> None:
        self.lnode = lnode
        self.rnode = rnode
        self.op = op


class Parser(object):
    def __init__(self, lexer) -> None:
        self.lexer = lexer
        self.current_token = self.get_next_token()

    def get_next_token(self) -> Token:
        return self.lexer.get_next_token()

    def error(self):
        raise Exception("Failed to parse!")

    def eat(self, type) -> None:
        if self.current_token.type == type:
            self.current_token = self.get_next_token()
        else:
            self.error()

    def factor(self) -> AST:
        """
        factor : INTEGER | LPAREN expr RPAREN
        """
        if self.current_token.type == INTEGER:
            node = NumNode(self.current_token.value)
            self.eat(INTEGER)
            return node
        elif self.current_token.type == LPAREN:
            self.eat(LPAREN)
            node = self.expr()
            self.eat(RAPAREN)
            return node
        else:
            self.error()

    def term(self) -> AST:
        """
        term : factor ((MUL | DIV) factor)*
        """
        lnode = self.factor()
        while (self.current_token.type == MUL or
               self.current_token.type == DIV):
            if self.current_token.type == MUL:
                self.eat(MUL)
                rnode = self.factor()
                lnode = DuoNode(lnode, rnode, "*")
            else:
                self.eat(DIV)
                rnode = self.factor()
                lnode = DuoNode(lnode, rnode, "/")
        return lnode

    def expr(self) -> AST:
        """
        expr : term ((PLUS | MINUS) term)*
        """
        lnode = self.term()
        while (self.current_token.type == PLUS or
               self.current_token.type == MINUS):
            if self.current_token.type == PLUS:
                self.eat(PLUS)
                rnode = self.term()
                lnode = DuoNode(lnode, rnode, "+")
            else:
                self.eat(MINUS)
                rnode = self.term()
                lnode = DuoNode(lnode, rnode, "-")
        return lnode

    def parse(self) -> AST:
        return self.expr()


###############################################################################
#   TRANSLATOR                                                                #
###############################################################################
class NodeVisitor(object):
    def visit(self, node):
        method_name = "visit_" + type(node).__name__
        visitor = getattr(self, method_name, self.generic_visit)
        return visitor(node)    # self.method_name(node)

    def generic_visit(self, node):
        raise Exception(f"No visit_{type(node)} method")


class Translator_RPN(NodeVisitor):
    def __init__(self, ast) -> None:
        self.ast = ast

    def visit_NumNode(self, node) -> str:
        return str(node.value) + " "

    def visit_DuoNode(self, node) -> str:
        return self.visit(node.lnode) + self.visit(node.rnode) + node.op + " "

    def translate(self) -> str:
        return self.visit(self.ast)


class Translator_Lisp(NodeVisitor):
    def __init__(self, ast) -> None:
        self.ast = ast

    def visit_NumNode(self, node) -> str:
        return str(node.value)

    def visit_DuoNode(self, node) -> str:
        return ("(" + node.op + " " +
                self.visit(node.lnode) + " " + self.visit(node.rnode) + ")")

    def translate(self) -> str:
        return self.visit(self.ast)


def test():
    expression = "(     7      + 2)* 3"
    lexer = Lexer(expression)
    parser = Parser(lexer)
    ast = parser.parse()
    rpn = Translator_RPN(ast).translate()
    print(f"The RPN style of the expression {expression}:\n" + rpn)
    lisp = Translator_Lisp(ast).translate()
    print(f"The Lisp style of the expression {expression}:\n" + lisp)


def main():
    print("Translate the expression to RPN and Lisp style.")
    print("Input expressions, q or Q to exit.")
    expression = input()
    while expression.upper() != "Q":
        ast = Parser(Lexer(expression)).parse()
        rpn = Translator_RPN(ast).translate()
        print("The RPN style: " + rpn)
        lisp = Translator_Lisp(ast).translate()
        print("The Lisp style: " + lisp)
        expression = input()


if __name__ == "__main__":
    main()

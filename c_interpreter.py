INT, FUNC, RETURN, ADD, SUB, MUL, DIV = 'INT', 'FUNC', 'RETURN', 'ADD', 'SUB', 'MUL', 'DIV' 
ID, EOF, LPA, RPA, LSB, RSB, LBR, RBR = 'ID', 'EOF', 'LPA', 'RPA', 'LSB', 'RSB', 'LBR', 'RBR' 
TYPE = 'TYPE'


class Token():
    def __init__(self, type, value):
        self.type = type
        self.value = value

    def __str__(self):
        return f"Token({self.type}, {self.value})"

    def __repr__(self):
        return self.__str__()


class Lexer(object):
    def __init__(self, text):
        self.text = text
        self.index = 0
        self.current_char = self.text[self.index]

    def error(self, message):
        raise Exception(f"Lexer failed, {message}")

    def advance(self):
        self.index += 1
        if self.index < len(self.text):
            self.current_char = self.text[self.index]
        else:
            self.current_char = None

    def skip_whitespace(self):
        while self.current_char is not None and self.current_char.isspace():
            self.advance()

    def get_a_number(self):
        res = ''
        while self.current_char is not None and self.current_char.isdigit():
            res += self.current_char
            self.advance()
        return res

    def get_a_word(self):
        res = ''
        while self.current_char is not None and self.current_char.isalnum():
            res += self.current_char
            self.advance()
        if res == 'int':
            return Token(TYPE, INT)
        elif res == 'return':
            return Token(RETURN, RETURN)
        else:
            return Token(ID, res)

    def get_next_token(self):
        while self.current_char is not None:

            if self.current_char.isdigit() or self.current_char == '.':
                return self.get_a_number()

            elif self.current_char.isspace():
                self.skip_whitespace()
                continue

            elif self.current_char == '+':
                self.advance()
                return Token(ADD, '+')

            elif self.current_char == '-':
                self.advance()
                return Token(SUB, '-')

            elif self.current_char == '*':
                self.advance()
                return Token(MUL, '*')

            elif self.current_char == '/':
                self.advance()
                return Token(DIV, '/')

            elif self.current_char == '(':
                self.advance()
                return Token(LPA, '(')

            elif self.current_char == ')':
                self.advance()
                return Token(RPA, ')')

            else:
                self.error("invalid syntax")

        return Token(EOF, 'EOF')


class AST:
    pass


class FuncNode(AST):
    def __init__(self, type, name, params, body):
        self.type = type
        self.name = name
        self.params = params
        self.body = self.body

extension Token {
    public enum Kind: Int, Hashable {
        case eof = -1
        case id = 1
        case int = 2
        case newline = 3
        case ws = 4
        case lparen = 5
        case rparen = 6
        case lbrace = 7
        case rbrace = 8
        case string = 9
        case stringInterpolationStart = 10
        case stringInterpolationContinue = 11
        case stringInterpolationFinish = 12
        case op = 13
    }
}

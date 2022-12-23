extension CherryToken {
    public enum Kind: Int, Hashable {
        case eof = -1
        case nl = 1
        case ws = 2
        case comment = 3
        case multilineComment = 4
        case kwVar = 5
        case kwFunc = 6
        case kwClass = 7
        case kwPrecedenceGroup = 8
        case ckwHigherThan = 9
        case ckwLowerThan = 10
        case ckwAssignment = 11
        case cwkAssociativity = 12
        case cwkAssociativityValue = 13
        case integerLiteral = 14
        case floatingPointLiteral = 15
        case booleanLiteral = 16
        case nilLiteral = 17
        case stringLiteral = 18
        case multilineStringLiteral = 19
        case stringInterpolationStart = 20
        case stringInterpolationContinue = 21
        case stringInterpolationFinish = 22
        case multilineStringInterpolationStart = 23
        case multilineStringInterpolationContinue = 24
        case multilineStringInterpolationFinish = 25
        case rawStringLiteral = 26
        case rawMultilineStringLiteral = 27
        case identifier = 28
        case implicitParameterName = 29
        case lparen = 30
        case rparen = 31
        case dot = 32
        case coma = 33
        case colon = 34
        case semicolon = 35
        case lbrace = 36
        case rbrace = 37
        case minus = 38
        case op = 39
    }
}

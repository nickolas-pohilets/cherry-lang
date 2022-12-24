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
        case floatingPointLiteral = 14
        case integerLiteral = 15
        case booleanLiteral = 16
        case nilLiteral = 17
        case stringLiteralStart = 18
        case multilineStringLiteralStart = 19
        case stringInterpolationClose = 20
        case rawStringLiteral = 21
        case badRawStringLiteral = 22
        case rawMultilineStringLiteral = 23
        case badRawMultilineStringLiteral = 24
        case identifier = 25
        case implicitParameterName = 26
        case lparen = 27
        case rparen = 28
        case dot = 29
        case coma = 30
        case colon = 31
        case semicolon = 32
        case lbrace = 33
        case rbrace = 34
        case minus = 35
        case op = 36
        case stringLiteralEnd = 37
        case multilineStringLiteralEnd = 38
        case stringContentVerbatim = 39
        case stringContentEscape = 40
        case stringContentUnicode = 41
        case stringContentBadEscape = 42
        case stringInterpolationOpen = 43
    }
}

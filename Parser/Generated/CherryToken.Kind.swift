extension CherryToken {
    public enum Kind: Int, Hashable {
        case eof = -1
        case t0 = 1
        case t1 = 2
        case t2 = 3
        case t3 = 4
        case t4 = 5
        case t5 = 6
        case t6 = 7
        case t7 = 8
        case t8 = 9
        case t9 = 10
        case t10 = 11
        case t11 = 12
        case t12 = 13
        case t13 = 14
        case t14 = 15
        case nl = 16
        case ws = 17
        case comment = 18
        case multilineComment = 19
        case integerLiteral = 20
        case floatingPointLiteral = 21
        case booleanLiteral = 22
        case nilLiteral = 23
        case stringLiteral = 24
        case multilineStringLiteral = 25
        case stringInterpolationStart = 26
        case stringInterpolationContinue = 27
        case stringInterpolationFinish = 28
        case multilineStringInterpolationStart = 29
        case multilineStringInterpolationContinue = 30
        case multilineStringInterpolationFinish = 31
        case rawStringLiteral = 32
        case rawMultilineStringLiteral = 33
        case identifier = 34
        case implicitParameterName = 35
        case lparen = 36
        case rparen = 37
        case dot = 38
        case lbrace = 39
        case rbrace = 40
        case op = 41
        case newline = 42
        case string = 43
    }
}

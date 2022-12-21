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
        case identifier = 20
        case implicitParameterName = 21
        case integerLiteral = 22
        case floatingPointLiteral = 23
        case booleanLiteral = 24
        case nilLiteral = 25
        case stringLiteral = 26
        case multilineStringLiteral = 27
        case stringInterpolationStart = 28
        case stringInterpolationContinue = 29
        case stringInterpolationFinish = 30
        case multilineStringInterpolationStart = 31
        case multilineStringInterpolationContinue = 32
        case multilineStringInterpolationFinish = 33
        case rawStringLiteral = 34
        case rawMultilineStringLiteral = 35
        case lparen = 36
        case rparen = 37
        case lbrace = 38
        case rbrace = 39
        case op = 40
        case bool = 41
        case newline = 42
        case string = 43
    }
}

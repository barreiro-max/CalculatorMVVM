enum Token: Equatable, Hashable {
    case number(Double)
    case operation(OperationType)
    
    init?(stringPart: String) {
        if let op = OperationType(rawValue: stringPart) {
            self = .operation(op)
        } else if let number = Double(stringPart) {
            self = .number(number)
        } else {
            return nil
        }
    }
    
    var isNumber: Bool {
        if case .number = self {
            true
        } else {
            false
        }
    }
    
    var isOperation: Bool {
        if case .operation = self {
            true
        } else {
            false
        }
    }
}

extension Token {
    static func performOp(lhs: Token, rhs: Token, op: (Double, Double) -> Double) -> Token {
        guard case let Token.number(a) = lhs, case let Token.number(b) = rhs else {
            return .number(0)
        }
        return .number(op(a, b))
    }

    static func + (lhs: Token, rhs: Token) -> Token {
        performOp(lhs: lhs, rhs: rhs, op: +)
    }
    
    static func - (lhs: Token, rhs: Token) -> Token {
        performOp(lhs: lhs, rhs: rhs, op: -)
        
    }
    static func * (lhs: Token, rhs: Token) -> Token {
        performOp(lhs: lhs, rhs: rhs, op: *)

    }
    static func / (lhs: Token, rhs: Token) -> Token {
        performOp(lhs: lhs, rhs: rhs, op: /)
    }
}




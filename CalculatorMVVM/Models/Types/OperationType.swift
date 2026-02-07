enum OperationType: String {
    case add = "+"
    case subtract = "-"
    case multiply = "*"
    case divide = "/"
    
    init?(from token: Token) {
        guard case let .operation(op) = token else {
            return nil
        }
        self = op
    }
    
    var precedence: Int {
        switch self {
        case .add, .subtract:
            return 1
        case .multiply, .divide:
            return 2
        }
    }
}

extension OperationType {
    func apply(lhs: Double, rhs: Double) throws(CalculatorError) -> Double {
        let result: Double
        
        switch self {
        case .add: result = lhs + rhs
        case .subtract: result = lhs - rhs
        case .multiply: result = lhs * rhs
        case .divide:
            guard rhs != 0 else {
                throw CalculatorError.divideByZero
            }
            result = lhs / rhs
        }
        
        guard !result.isNaN else {
            throw CalculatorError.isNaN
        }
        
        guard result.isFinite else {
            throw CalculatorError.isInfinity
        }
        
        return result
    }
}

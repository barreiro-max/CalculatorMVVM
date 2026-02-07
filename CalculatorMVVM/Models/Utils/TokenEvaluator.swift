enum TokenEvaluator {
    static func perform(
        op: OperationType,
        lhs: Token,
        rhs: Token
    ) throws(CalculatorError) -> Token? {
        
        guard case let .number(a) = lhs,
              case let .number(b) = rhs else {
            return nil
        }
        return try .number(op.apply(lhs: a, rhs: b))
    }
}

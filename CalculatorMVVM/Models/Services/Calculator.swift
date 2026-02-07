struct Calculator: Calculated {
    func calculate(postfixExpression: [Token]) throws(CalculatorError) -> Double? {
        
        var stk = Stack<Token>()
        
        let isOperation: Dictionary<Token, Bool> = [.operation(.add): true,
                                                    .operation(.subtract): true,
                                                    .operation(.multiply): true,
                                                    .operation(.divide): true]
        // 3 2 - 5 + = 1 5 + = 6
        for token in postfixExpression {
            if let _ = isOperation[token] {
                if let numFromTokenOne = stk.pop(),
                   let numFromTokenTwo = stk.pop() {
                    if let operation = OperationType(from: token) {
                        let tempResult: Token? = try TokenEvaluator.perform(
                            op: operation,
                            lhs: numFromTokenTwo,
                            rhs: numFromTokenOne
                        )
                        if let tempResult {
                            stk.push(tempResult)
                        }
                    }
                    
                }
                
            }
            else {
                stk.push(token)
            }
        }
        
        if case let .number(value) = stk.pop() {
            return value
        }
        return nil
    }
}

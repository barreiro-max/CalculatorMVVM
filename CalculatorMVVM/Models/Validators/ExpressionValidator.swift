enum ExpressionValidator: Validated {
    static func checkEvenProperty(_ tokens: [Token]) -> Bool {
        let sequenceEvenNumbers = stride(from: 0, to: tokens.count, by: 2)
        let isValid = sequenceEvenNumbers.allSatisfy { tokens[$0].isNumber }
        return isValid
    }

    static func checkPropertyExpression(_ tokens: [Token]) -> Bool {
        let (num: countOperands, operation: countOperators) = tokens.reduce((0,0)) {acc, currentToken in
            if case .number = currentToken {
                return (acc.num + 1, acc.operation)
            } else {
                return (acc.num, acc.operation + 1)
            }
        }
        
        if countOperators == 0 {
            return false
        }
        
        return countOperands - countOperators == 1
    }
}

extension ExpressionValidator {
    static func isValidInfixExpression(for tokens: [Token]) -> Bool {
        return checkEvenProperty(tokens) && checkPropertyExpression(tokens)
    }
}

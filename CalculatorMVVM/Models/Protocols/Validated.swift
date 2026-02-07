protocol Validated {
    static func checkEvenProperty(_ tokens: [Token]) -> Bool
    
    static func checkPropertyExpression(_ tokens: [Token]) -> Bool
    
    static func isValidInfixExpression(for tokens: [Token]) -> Bool
}


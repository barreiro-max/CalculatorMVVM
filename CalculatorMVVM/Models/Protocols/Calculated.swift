protocol Calculated {    
    func calculate(postfixExpression: [Token])
    throws(CalculatorError) -> Double?
}


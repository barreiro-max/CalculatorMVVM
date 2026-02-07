struct ShuntingYardParser: Parsable {
    func parse(infix: [Token]) -> [Token] {
        var stk = Stack<Token>()
        var postfixArrayTokens = [Token]()

        for expr in infix {
            if case .number = expr {
                postfixArrayTokens.append(expr)
            } else {
                while let top = stk.peek(),
                      case let .operation(op1) = expr,
                      case let .operation(op2) = top,
                      op2.precedence >= op1.precedence {
                    postfixArrayTokens.append(stk.pop()!)
                }
                stk.push(expr)
            }
        }
        while !stk.isEmpty {
            postfixArrayTokens.append(stk.pop()!)
        }
        
        return postfixArrayTokens
    }
}


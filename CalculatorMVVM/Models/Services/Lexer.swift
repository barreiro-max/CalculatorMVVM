struct Lexer: Tokenizable {
    func tokenize(_ input: String) throws(LexerError) -> [Token] {
        guard !input.isEmpty else {
            throw .emptyString
        }
        
        let partsOfString = input
                            .components(separatedBy: " ")
                            .filter { !$0.isEmpty }
        
        var tempCollectionTokens = [Token]()
        
        for part in partsOfString {
            if let token = Token(stringPart: part) {
                tempCollectionTokens.append(token)
            } else {
                throw .invalidToken
            }
        }
        
        guard ExpressionValidator.isValidInfixExpression(for: tempCollectionTokens) else {
            throw .invalidExpression
        }
        
        return tempCollectionTokens
    }
}


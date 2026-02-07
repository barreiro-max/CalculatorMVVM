protocol Tokenizable {
    func tokenize(_ input: String)
    throws(LexerError) -> [Token]
}

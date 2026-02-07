protocol CalculatorFacadeProtocol {
    func execute(expression: String) throws -> Double
}

struct CalculatorFacade: CalculatorFacadeProtocol {
    private let preprocessor: Preprocessed
    private let lexer: Tokenizable
    private let parser: Parsable
    private let calculator: Calculated
    
    init(
        preprocessor: Preprocessed,
        lexer: Tokenizable,
        parser: Parsable,
        calculator: Calculated
    ) {
        self.preprocessor = preprocessor
        self.lexer = lexer
        self.parser = parser
        self.calculator = calculator
    }
    
    func execute(expression: String) throws -> Double {
        let rawTokens = preprocessor.preprocess(rawInput: expression)
        let tokens = try lexer.tokenize(rawTokens)
        let rpn = parser.parse(infix: tokens)
        return try calculator.calculate(postfixExpression: rpn) ?? 0.0
    }
}

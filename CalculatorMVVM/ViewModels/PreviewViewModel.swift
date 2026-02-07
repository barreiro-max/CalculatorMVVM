extension CalculatorViewModel {
    static var preview: CalculatorViewModel {
        return CalculatorViewModel(
            facade: CalculatorFacade(
                preprocessor: Preprocessor(),
                lexer: Lexer(),
                parser: ShuntingYardParser(),
                calculator: Calculator()
            ),
            expression: "5*21-5",
            result: "100"
        )
    }
}

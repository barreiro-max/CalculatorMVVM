import Foundation

@Observable
class CalculatorViewModel {
    private let facade: CalculatorFacadeProtocol
    
    var expression: String
    var result: String
    var calculateError: String?
    
    init(
        facade: CalculatorFacadeProtocol,
        expression: String = "",
        result: String = "",
        calculateError: String? = nil
    ) {
        self.facade = facade
        self.expression = expression
        self.result = result
        self.calculateError = calculateError
    }
    
    func append(_ symbol: String) {
        expression.append(symbol)
    }
    
    func delete() {
        _ = expression.popLast()
    }
    
    func clearExpression() {
        expression = ""
    }
    
    func clear() {
        expression = ""
        result = ""
    }
    
    func calculate() {
        do {
            let value = try facade.execute(expression: expression)
            result = String(value)
            calculateError = nil
        } catch {
            result = ""
            calculateError = error.localizedDescription
        }
    }
}

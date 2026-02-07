import Foundation
enum CalculatorError: LocalizedError {
    case divideByZero
    case invalidResult
    case isInfinity
    case isNaN
    
    var errorDescription: String? {
        switch self {
        case .divideByZero: "Division by zero"
        case .invalidResult: "Invalid result"
        case .isInfinity: "The result is infinity"
        case .isNaN: "The result is not a number"
        }
    }
}

import Foundation
enum LexerError: LocalizedError {
    case emptyString
    case invalidToken
    case invalidExpression
    
    var errorDescription: String? {
        switch self {
        case .emptyString: "Empty string"
        case .invalidToken: "Invalid token"
        case .invalidExpression: "Invalid expression"
        }
    }
}

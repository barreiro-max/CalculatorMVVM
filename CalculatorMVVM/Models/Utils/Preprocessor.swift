protocol Preprocessed {
    func preprocess(rawInput: String) -> String
}

struct Preprocessor: Preprocessed {
    func preprocess(rawInput: String) -> String {
        var input = ""
        let hasWhitespace = rawInput.contains { $0.isWhitespace }
        
        if hasWhitespace {
            return rawInput
        } else {
            for char in rawInput {
                if "+-*/".contains(char) {
                    input += " \(char) "
                } else {
                    input += String(char)
                }
            }
        }
        return input
    }
}


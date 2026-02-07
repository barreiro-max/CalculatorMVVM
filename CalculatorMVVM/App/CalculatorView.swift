import SwiftUI

struct CalculatorView: View {
    @State var viewModel = CalculatorViewModel(
        facade: CalculatorFacade(
            preprocessor: Preprocessor(),
            lexer: Lexer(),
            parser: ShuntingYardParser(),
            calculator: Calculator()
        )
    )
    
    var body: some View {
        VStack {
            DisplayView(viewModel: viewModel)
            Spacer()
            KeypadView(viewModel: viewModel)
        }
    }
}

#Preview {
    CalculatorView(viewModel: .preview)
}

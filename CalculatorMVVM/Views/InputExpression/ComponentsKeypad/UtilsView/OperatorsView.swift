import SwiftUI

struct OperatorsView: View {
    @Bindable var viewModel: CalculatorViewModel

    let operators: [String] = ["/", "*", "-", "+"]
    
    var body: some View {
        VStack {
            ForEach(operators, id: \.self) { op in
                ButtonAppendView(viewModel: viewModel, element: op)
            }
        }
    }
}

#Preview {
    OperatorsView(viewModel: .preview)
        .scaleEffect(0.75)
}

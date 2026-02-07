import SwiftUI

struct ButtonResultView: View {
    @Bindable var viewModel: CalculatorViewModel

    var body: some View {
        Button(action: {
            viewModel.calculate()
            viewModel.clearExpression()
        }) {
            Text("=")
                .font(.largeTitle)
                .foregroundStyle(.black)
                .frame(width: 40, height: 40)
                .padding(40)
                .background(.cyan)
                .clipShape(.circle)
                .overlay {
                    Circle().stroke(.black, lineWidth: 3)
                }
        }
    }
}

#Preview {
    ButtonResultView(viewModel: .preview)
}

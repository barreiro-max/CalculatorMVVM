import SwiftUI

struct BottomInputRowView: View {
    @Bindable var viewModel: CalculatorViewModel
    var body: some View {
        HStack {
            ButtonResultView(viewModel: viewModel)
            ButtonAppendView(viewModel: viewModel, element: "0")
            ButtonAppendView(viewModel: viewModel, element: ".")
        }
    }
}

#Preview {
    BottomInputRowView(viewModel: .preview)
        .scaleEffect(0.75)
}

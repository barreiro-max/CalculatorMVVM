import SwiftUI

struct DisplayView: View {
    @Bindable var viewModel: CalculatorViewModel
    
    var body: some View {
        VStack {
            ExpressionComponentView(viewModel: viewModel)
            ResultComponentView(viewModel: viewModel)
        }
        .padding(.trailing)
    }
}

#Preview {
    DisplayView(viewModel: .preview)
}

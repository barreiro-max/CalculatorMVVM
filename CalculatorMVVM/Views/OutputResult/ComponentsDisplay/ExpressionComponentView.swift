import SwiftUI

struct ExpressionComponentView: View {
    @Bindable var viewModel: CalculatorViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(viewModel.expression)
                    .font(.title)
            }
        }
    }
}

#Preview {
    ExpressionComponentView(viewModel: .preview)
}

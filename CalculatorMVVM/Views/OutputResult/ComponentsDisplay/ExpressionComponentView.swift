import SwiftUI

struct ExpressionComponentView: View {
    @Bindable var viewModel: CalculatorViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text(viewModel.expression)
                    .font(.system(size: 32,
                                  design: .default))
            }
        }
    }
}

#Preview {
    ExpressionComponentView(viewModel: .preview)
}

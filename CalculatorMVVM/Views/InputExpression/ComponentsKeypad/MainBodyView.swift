import SwiftUI

struct MainBodyView: View {
    @Bindable var viewModel: CalculatorViewModel
    var body: some View {
        HStack {
            VStack {
                NumbersView(viewModel: viewModel)
                BottomInputRowView(viewModel: viewModel)
            }
            OperatorsView(viewModel: viewModel)
        }
    }
}

#Preview {
    MainBodyView(viewModel: .preview)
        .scaleEffect(0.75)
}

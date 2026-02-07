import SwiftUI

struct KeypadView: View {
    @Bindable var viewModel: CalculatorViewModel
    var body: some View {
        VStack {
            TopBarView(viewModel: viewModel)
            MainBodyView(viewModel: viewModel)
        }
        .frame(width: 390, height: 500)
        .scaleEffect(0.75)
    }
}

#Preview {
    KeypadView(viewModel: .preview)
}

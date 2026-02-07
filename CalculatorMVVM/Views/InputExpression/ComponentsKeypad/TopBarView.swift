import SwiftUI

struct TopBarView: View {
    @Bindable var viewModel: CalculatorViewModel

    var body: some View {
        HStack {
            ButtonDeleteView(viewModel: viewModel)
            Spacer()
                .frame(width: 390)
        }
    }
}

#Preview {
    TopBarView(viewModel: .preview)
        .scaleEffect(0.75)
}

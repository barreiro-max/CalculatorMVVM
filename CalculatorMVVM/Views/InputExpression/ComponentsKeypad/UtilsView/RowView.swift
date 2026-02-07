import SwiftUI

struct RowView: View {
    @Bindable var viewModel: CalculatorViewModel

    let row: [String]
    
    var body: some View {
        HStack {
            ForEach(row, id: \.self) { el in
                ButtonAppendView(viewModel: viewModel, element: el)
            }
        }
    }
}

#Preview {
    RowView(viewModel: .preview, row: ["1", "2", "3"])
        .scaleEffect(0.75)
}

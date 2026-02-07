import SwiftUI

struct NumbersView: View {
    @Bindable var viewModel: CalculatorViewModel

    let gridNumbers = [
        ["7", "8", "9"],
        ["4", "5", "6"],
        ["1", "2", "3"],
    ]
    
    var body: some View {
        VStack {
            ForEach(gridNumbers, id: \.self) { row in
                RowView(viewModel: viewModel, row: row)
            }
        }
    }
}

#Preview {
    NumbersView(viewModel: .preview)
        .scaleEffect(0.75)
}

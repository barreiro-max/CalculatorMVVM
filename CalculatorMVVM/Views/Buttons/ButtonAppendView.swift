import SwiftUI

struct ButtonAppendView: View {
    @Bindable var viewModel: CalculatorViewModel
    
    let element: String
    
    var body: some View {
        Button(action: {
            viewModel.append(element)
        }) {
            Text(element)
                .font(.largeTitle)
                .foregroundStyle(.black)
                .frame(width: 40, height: 40)
                .padding(40)
                .background(.green)
                .clipShape(.circle)
                .overlay {
                    Circle().stroke(.black, lineWidth: 3)
                }
        }
    }
}

#Preview {
    ButtonAppendView(viewModel: .preview, element: "0")
}

import SwiftUI

struct ResultComponentView: View {
    @Bindable var viewModel: CalculatorViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                if let error = viewModel.calculateError {
                    Text(error)
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.red)
                } else {
                    Text(viewModel.result)
                        .font(.largeTitle)
                        .bold()
                }
                
            }
        }
    }
}

#Preview {
    ResultComponentView(viewModel: .preview)
}

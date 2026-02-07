import SwiftUI

struct ResultComponentView: View {
    @Bindable var viewModel: CalculatorViewModel
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                if let error = viewModel.calculateError {
                    Text(error)
                        .font(.system(size: 36,
                                      weight: .bold,
                                      design: .default))
                        .foregroundStyle(.red)
                } else {
                    Text(viewModel.result)
                        .font(.system(size: 32,
                                      weight: .bold,
                                      design: .default))
                }
                
            }
        }
    }
}

#Preview {
    ResultComponentView(viewModel: .preview)
}

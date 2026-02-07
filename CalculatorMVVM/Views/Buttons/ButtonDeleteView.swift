import SwiftUI

struct ButtonDeleteView: View {
    @Bindable var viewModel: CalculatorViewModel
    @State private var isPressed = false
    
    var body: some View {
        Text("D")
            .font(.largeTitle)
            .foregroundStyle(.black.opacity(isPressed ? 0.3 : 1.0))
            .frame(width: 40, height: 40)
            .padding(40)
            .background(Color.red.opacity(isPressed ? 0.3 : 1.0))
            .animation(.easeInOut(duration: 0.15), value: isPressed)
        
            .clipShape(Circle())
            .overlay(content: {
                Circle().stroke(.black, lineWidth: 3)
            })
            .onTapGesture {
                withAnimation {
                    isPressed.toggle()
                    viewModel.delete()
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                    withAnimation {
                        isPressed = false
                    }
                }
            }
            .onLongPressGesture(minimumDuration: 0.4, maximumDistance: 20) {
                isPressed.toggle()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                    withAnimation {
                        isPressed = false
                        viewModel.clear()
                    }
                }
            }
        
    }
}


#Preview {
    ButtonDeleteView(viewModel: .preview)
}

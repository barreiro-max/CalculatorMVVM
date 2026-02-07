import SwiftUI

@main
struct CalculatorMVVMApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .preferredColorScheme(.light)
        }
    }
}

import SwiftUI

@main
struct IntBinaryApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Decimal()
                Binary()
                Hexadecimal()
                Octal()
            }
        }
    }
}

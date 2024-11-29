import SwiftUI

@main
struct ThemeSwitchApp: App {
    @AppStorage("selectedTheme") private var selectedTheme: String = AppTheme.system.rawValue
    var body: some Scene {
        WindowGroup {
            ContentView()
                .preferredColorScheme(AppTheme(rawValue: selectedTheme)?.colorScheme)
        }
    }
}

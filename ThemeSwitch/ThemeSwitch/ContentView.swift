import SwiftUI

struct ContentView: View {
    
    // initially set nil, it will use system theme.
    @AppStorage("selectedTheme") private var selectedTheme: String = AppTheme.system.rawValue

    var body: some View {
        VStack {
            Picker("Select Theme", selection: $selectedTheme) {
                            ForEach(AppTheme.allCases, id: \.self) { theme in
                                Text(theme.rawValue.capitalized).tag(theme.rawValue)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                  
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

 

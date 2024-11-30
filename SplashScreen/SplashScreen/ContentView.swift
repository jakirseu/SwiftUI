import SwiftUI

struct ContentView: View {
    @State var showSplash: Bool = true
    var body: some View {
        ZStack {
            if self.showSplash {
                SplashScreenView()
            } else {
                MainView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                withAnimation {
                    self.showSplash = false
                }
            }
        }
    }
}

struct MainView: View {
    var body: some View {
        Text("Hello World!")
    }
}

struct SplashScreenView: View {
    var body: some View {
        Color.teal
            .ignoresSafeArea()
        Image(systemName: "globe")
            .font(.largeTitle)
            .foregroundColor(.white)
            .symbolEffect( .pulse, isActive: true )
    }
}

#Preview {
    ContentView()
}

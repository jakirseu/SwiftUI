import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .opacity(0.5)
                .ignoresSafeArea()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
            }
            //        .frame(maxWidth: .infinity, maxHeight: .infinity)
            //        .background(
            //        Image("background")
            //            .resizable()
            //            .scaledToFill()
            //            .opacity(0.5)
            //            .ignoresSafeArea()
            //        )
            
        }
    }
}

#Preview {
    ContentView()
}

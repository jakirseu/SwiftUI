import SwiftUI
import AVKit

struct ContentView: View {
    var body: some View {
        ZStack {
            VideoPlayerView(videoURL: Bundle.main.url(forResource: "background", withExtension: "mp4")!)
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Hello, world!")
                //VideoPlayer(player: AVPlayer(url:  Bundle.main.url(forResource: "background", withExtension: "mp4")!))
            }
        }
    }
}

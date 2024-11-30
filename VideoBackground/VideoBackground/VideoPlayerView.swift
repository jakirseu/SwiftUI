import SwiftUI
import AVKit

struct VideoPlayerView: UIViewRepresentable {
   
    var videoURL: URL
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        // Setup the player
        let player = AVPlayer(url: videoURL)
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = view.bounds
        view.layer.addSublayer(playerLayer)
        
        player.isMuted = true // Optional: Mute the video
        player.play()
        
        // Ensure playerLayer dynamically resizes
        DispatchQueue.main.async {
            playerLayer.frame = view.bounds
        }

        // Optional: Observe when the video ends to restart it
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: player.currentItem, queue: .main) { _ in
            player.seek(to: .zero)
            player.play()
        }
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        // Update frame dynamically
        if let playerLayer = uiView.layer.sublayers?.first as? AVPlayerLayer {
            playerLayer.frame = uiView.bounds
        }
    }
}

 

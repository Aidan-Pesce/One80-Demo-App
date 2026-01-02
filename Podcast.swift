import SwiftUI

import AVKit
import AVFoundation
import PlaygroundSupport

import WebKit

struct YouTubeView: UIViewRepresentable {
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let embedHTML = """
        <html>
        <body style="margin:0;">
        <iframe width="100%" height="100%" src="https://www.youtube.com/embed/\(videoID)" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </body>
        </html>
        """
        uiView.loadHTMLString(embedHTML, baseURL: nil)
    }
}

struct VideoPlayerView: UIViewControllerRepresentable {
    let videoURL: URL
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        let player = AVPlayer(url: videoURL)
        playerViewController.player = player
        return playerViewController
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // This method can be used to update the view controller if needed
    }
}


struct Podcast: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack {
                Text("Podcast").bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text("This feature is coming soon!")
                
                VideoPlayerView(videoURL: URL(string: "https://youtu.be/oUuq9f71Muo?si=uBGC0OoZr5Tc6Q9i")!)
                    .frame(width: 640, height: 300)
                    .cornerRadius(10)
            }
            
            //VideoPlayerView(videoURL: URL(string: "https://youtu.be/oUuq9f71Muo?si=QbAib6UeNwWUREZo")!).frame(width: 640, height: 380)
                
        
            
        }
    }
}

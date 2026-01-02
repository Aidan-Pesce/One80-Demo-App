import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let url = URL(string: urlString) {
            let request = URLRequest(url: url)
            uiView.load(request)
        }
    }
}



struct CatMap: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack {
                Text("CAT Map").bold().font(.title)
                Text("Our state of the art Catastrophe Mapping system displays current, potential CAT issues including NWS warnings & hazards as well as severe weather issues.").frame(maxWidth: UIScreen.main.bounds.width / 2)
                WebView(urlString: "https://www.google.com/maps/d/embed?mid=1952p4UbdZS1LcWb2DbSr55jvCYaYkXLb&ehbc=2E312F&ll=38.132736953532124%2C-98.4597770066014&z=4").frame(width: 640, height: 380)
                
                /*Link(destination: URL(string: "https://www.google.com/maps/d/viewer?mid=1952p4UbdZS1LcWb2DbSr55jvCYaYkXLb&femb=1&ll=47.99430014610244%2C-60.83831480830415&z=3")!) {
                    Text("Forecasted to keep you safe")
                    
                
                }*/
            }
        }
    }
}

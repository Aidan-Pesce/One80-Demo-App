import SwiftUI

struct Connectors: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack (alignment: .leading, spacing: 5) {
                Text("Connect with a Professional Now:").bold().font(.title)
                Text("Contact us at info@one80.com")
                Text("Or come visit us at 160 Federal Street, 4th Floor \nBoston, Massachusetts, 02110")
                
            }//.position(x: UIScreen.main.bounds.width / 2)
        }
    }
}

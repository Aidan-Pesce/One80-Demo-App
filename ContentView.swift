import SwiftUI

struct ContentView: View {
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().tintColor = .white // If you want the text color to be white
        
        // Optional: Customize the title text color
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    
    
    var body: some View {
        
    
        
        ZStack {
            
            Color.white
                .ignoresSafeArea()
                .zIndex(1)
            
            Link(destination: URL(string: "https://www.one80.com")!) {
                Image("One80Logo").resizable()//.frame(width: 250, height: 100).position(x:UIScreen.main.bounds.width / 2, y:75)// Positions image in the center
            }.zIndex(5).frame(width: 250, height: 100).position(x:UIScreen.main.bounds.width / 2, y:75)// Positions image in the center
                
            
            NavigationStack {
                                //.navigationTitle("Navigation Bar")
                VStack (spacing:0) {
                    Menu("Navigation") {
                        NavigationLink(destination: Programs()) {
                            Text("Programs")
                        }
                        NavigationLink(destination: Wholesale()) {
                            Text("Wholesale Specialties")
                        }
                        NavigationLink(destination: Podcast()) {
                            Text("Podcast")
                        }
                        NavigationLink(destination: CatMap()) {
                            Text("Cat Map")
                        }
                        NavigationLink(destination: Connectors()) {
                            Text("Connectors")
                        }
                                                                }.frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.white) // Set the background color for the entire view
                        //.position(x:UIScreen.main.bounds.width / 2)
                        .navigationTitle("Home")
                    
                    
                    NavigationLink(destination: OneBot()) {
                        Image(systemName: "ellipsis.message").resizable().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/).clipShape(Circle()).frame(width:100, height: 100).position(x: 1050, y: 200).zIndex(6)
                    }.background(Color.black.opacity(0.5))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).frame(width:100, height: 100).zIndex(4).position(x: 1050, y: 200)
                    
                
                    
                }.background(Color.white) //Fills entire background
                
                //.background(Color.white)
                    //.position(x: 200, y:150)
                    //.frame(width: .infinity, height: 400).background(Color.white)
                
                
                //.background(Color.white).frame(width: .infinity, height: 300).position(x: 200, y:100 )
                
            }.zIndex(2)
        
            Text("Highly Specialized Brokerage Solutions").zIndex(2).foregroundColor(.black).bold().position(x:UIScreen.main.bounds.width / 2, y: 750)
            
            
        }.background(Color.white)
    
        
    }
}

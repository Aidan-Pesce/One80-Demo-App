import SwiftUI




struct OneBot: View {
    @State var oneBotResponse: String = ""
    @State var text: String = ""
    @State var displayedText: String = ""
    
    var body: some View {        
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack {
                Text("Meet OneBot \nOne80's revolutionary new AI virtual assistant").font(.title).multilineTextAlignment(.center)
                
                
                
                VStack {
                    
                    TextField(" Enter your question here!", text: $text)
                        .frame(width: 300, height: 50)
                        .multilineTextAlignment(.center)
                        .background(Color.clear)
                        .overlay(
                            RoundedRectangle(cornerRadius: 4) // Customizable corner radius
                                .stroke(Color.white, lineWidth: 4) // Border color and width
                        )
                        .onSubmit {
                            // Update the displayedText when the user commits the input
                            displayedText = text
                            if (text == "") {
                                oneBotResponse = ""
                            } else if (text == "Hello OneBot" || text == "Hi OneBot" || text == "Hello" || text == "Hi" || text == "Hey") {
                                oneBotResponse = "Hello there"
                            } else if (text == "Hello there") {
                                oneBotResponse = "General Kenobi"
                            } else {
                                oneBotResponse = "Sorry, I am still a work in progress. Maybe one day I'll be smart..."
                            }
                        }
                    
                    VStack (spacing: 0) {
                        Text("\(displayedText)")
                            .foregroundColor(.white)
                            .font(.system(size: 18))
                            .frame(width: 450, height: 150, alignment: .leading)
                            .position(x: 240, y: 40)
                            //.position(x: (UIScreen.main.bounds.width / 2) - 175, y: 50)
                            .multilineTextAlignment(.leading)
                    
                        Text("\(oneBotResponse)")
                            .frame(width:250, height: 100)
                            //.position(x: (UIScreen.main.bounds.width / 2) + 50)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.red)
                            .font(.system(size: 18))
                    }.frame(width: 800, height: 300)
                    
                }.background(Color.blue)
                    .overlay(
                    RoundedRectangle(cornerRadius: 16) // Customizable corner radius
                        .stroke(Color.white, lineWidth: 4) // Border color and width
                )
                   //.frame(width: 800, height: 300)
                
                /*
                Text("Hi, I'm OneBot, One80's virtual assistant! Ask me anything and I can find you an answer!")
                
                TextField("Enter your question here!", text: $oneBotInput)//, onCommit: {
                    //print("Unfortunately this feature is still being developed").
                //})
                    .onSubmit{
                        displayedText = oneBotInput
                    }
                
                Text("Hello, \(displayedText)!")
                
                var inputText = oneBotInput
                */
            }
            
        }
    }
}


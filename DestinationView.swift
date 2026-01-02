import SwiftUI

struct DestinationView: View {
    
    @State var isDropdownExpanded = false
    @State var selectedOption = "Select an option"
    
    let options = ["Option 1", "Option 2", "Option 3", "Option 4"]
    
    
    
    var body: some View {
        Text("Destination View")
       
        
        ZStack {
            
            Button(action: {
                withAnimation {
                    isDropdownExpanded.toggle()
                }
            }) {
                HStack {
                    Text(selectedOption)
                        .foregroundColor(.black)
                    Spacer()
                    Image(systemName: isDropdownExpanded ? "chevron.up" : "chevron.down")
                        .foregroundColor(.gray)
                }
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray, lineWidth: 1)
                )
            }
            .padding(.horizontal).zIndex(3)
            
            // Dropdown Options
            if isDropdownExpanded {
                VStack(spacing: 0) {
                    ForEach(options, id: \.self) { option in
                        Button(action: {
                            withAnimation {
                                selectedOption = option
                                isDropdownExpanded = false
                            }
                        }) {
                            Text(option)
                                .foregroundColor(.black)
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .background(Color.white)
                        .overlay(
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 1), alignment: .bottom
                        )
                    }
                }
                .background(Color.white)
                .cornerRadius(8)
                .shadow(radius: 4)
                .padding(.horizontal)
            }
            
            Spacer()
        }
        .padding(.top, 100)
            
            
        }
        
        
    }


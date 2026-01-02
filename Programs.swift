import SwiftUI

struct Programs: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack (alignment: .leading, spacing: 5) {
                Text("Our Programs Include:").bold().font(.title)
                Text("Marine \nPublic Entity \nTransportation \nAuto Retailers \nProperty/Construction \nTravel/Accident & Health \nConsumer/Recreation \nCannabis \nHealthcare \nWarranty \nLife and Benefits\nCrime/Fidelity \nFinancial Lines \nCaptive and Alternative \nAffinity groups \nNonsubscription - TX \nEnvironmental Programs")
            }
        
        }
    }
}

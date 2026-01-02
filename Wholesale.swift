import SwiftUI

struct Wholesale: View {
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            VStack (alignment: .leading, spacing: 5) {
                Text("Our Wholesale Specialties Include:").bold().font(.title)
                Text("Commercial Property \nCommercial Casualty \nTransportation \nWorkers' Compensation \nOccupational Accident \nProfessional Liability \nManagement Liability \nCyber Liability \nPrivate Equity & Transactional Liability \nLife Insurance \nCommunity service \nLife Sciences \nPrivate Client Services \nEnvironmental Solutions")
            }//.position(x: UIScreen.main.bounds.width / 2)
        }
    }
}

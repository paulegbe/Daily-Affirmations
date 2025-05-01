import SwiftUI


struct AboutView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("About This App")
                    .font(.title.bold())

                Text("This app delivers daily positive affirmations to help you stay grounded, motivated, and inspired. Tap 'New Affirmation' to see a fresh message every time.")
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(16)

                Spacer()
            }
            .padding()
        }
        .navigationTitle("About")
    }
}

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("About This App")
                .font(.title)

            Text("This app delivers daily positive affirmations to help you stay grounded, motivated, and inspired. Tap 'New Affirmation' to see a fresh message every time.")
                .multilineTextAlignment(.center)
                .padding()

            Spacer()
        }
        .padding()
        .navigationTitle("About")
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}

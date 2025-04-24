import SwiftUI

struct ContentView: View {
    @State private var affirmation = "You are worthy of love and growth."

    let affirmations = [
        "You are enough just as you are.",
        "Today is full of potential.",
        "You bring value to the world.",
        "Your presence is powerful.",
        "You are worthy of love and growth."
    ]

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text(affirmation)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()

                Button("New Affirmation") {
                    affirmation = affirmations.randomElement() ?? affirmation
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)

                NavigationLink("About This App", destination: AboutView())
                    .padding(.top, 40)
            }
            .padding()
            .navigationTitle("Daily Affirmations")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

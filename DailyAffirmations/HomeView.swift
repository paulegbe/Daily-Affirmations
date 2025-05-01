import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: AffirmationViewModel
    @State private var affirmation = "You are powerful and full of potential."

    let affirmations = [
        "You are enough just as you are.",
        "Today is full of potential.",
        "You bring value to the world.",
        "Your presence is powerful.",
        "You are worthy of love and growth."
    ]

    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Spacer()

                Text(affirmation)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(20)
                    .shadow(radius: 3)

                HStack(spacing: 16) {
                    Button("New") {
                        affirmation = affirmations.randomElement() ?? affirmation
                    }
                    .buttonStyle(.borderedProminent)

                    Button("Save") {
                        viewModel.addToFavorites(affirmation)
                    }
                    .buttonStyle(.bordered)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Affirmations")
        }
    }
}

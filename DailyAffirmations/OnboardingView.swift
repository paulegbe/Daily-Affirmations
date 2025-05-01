import SwiftUI

struct OnboardingView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        VStack(spacing: 40) {
            Spacer()

            Image(systemName: "sparkles")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.accentColor)

            Text("Welcome to Daily Affirmations")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)

            Text("Simple, beautiful affirmations to uplift your day.")
                .multilineTextAlignment(.center)
                .font(.title3)
                .foregroundColor(.secondary)

            Spacer()

            Button("Get Started") {
                appState.showOnboarding = false
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.accentColor)
            .foregroundColor(.white)
            .cornerRadius(12)
        }
        .padding()
    }
}

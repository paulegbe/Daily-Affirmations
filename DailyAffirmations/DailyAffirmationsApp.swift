import SwiftUI

@main
struct DailyAffirmationApp: App {
    @StateObject private var appState = AppState()
    @StateObject private var viewModel = AffirmationViewModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
                .environmentObject(viewModel)
        }
    }
}


import Foundation

class AppState: ObservableObject {
    @Published var showOnboarding: Bool {
        didSet {
            UserDefaults.standard.set(showOnboarding, forKey: "showOnboarding")
        }
    }

    init() {
        self.showOnboarding = UserDefaults.standard.bool(forKey: "showOnboarding") == false
    }
}

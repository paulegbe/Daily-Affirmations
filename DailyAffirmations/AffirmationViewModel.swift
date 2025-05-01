import Foundation
import SwiftUI

class AffirmationViewModel: ObservableObject {
    @Published var favorites: [String] = []

    func addToFavorites(_ affirmation: String) {
        if !favorites.contains(affirmation) {
            favorites.append(affirmation)
        }
    }
}

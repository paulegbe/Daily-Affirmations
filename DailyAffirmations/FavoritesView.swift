import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var viewModel: AffirmationViewModel

    var body: some View {
        NavigationStack {
            List {
                if viewModel.favorites.isEmpty {
                    Text("No favorites yet.")
                        .foregroundColor(.gray)
                        .italic()
                } else {
                    ForEach(viewModel.favorites, id: \.self) { fav in
                        Text(fav)
                            .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Favorites")
        }
    }
}

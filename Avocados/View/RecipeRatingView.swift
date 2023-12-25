//
//  RecipeRatingView.swift
//  Avocados
//
//  Created by Drashti on 21/12/23.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - Properties
    var recipe: Recipe
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(1 ... recipe.rating, id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundStyle(.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}

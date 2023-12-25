//
//  recipeCardView.swift
//  Avocados
//
//  Created by Drashti on 21/12/23.
//

import SwiftUI

struct recipeCardView: View {
    // MARK: - Properties
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModel: Bool = false
    
    // MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            // Card Image
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay {
                    HStack {
                        Spacer()
                        
                        VStack {
                            Image(systemName: "bookmark")
                                .font(Font.title.weight(.light))
                                .foregroundStyle(.white)
                                .imageScale(.small)
                                .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                                .padding()
                            Spacer()
                        }
                        
                    }
                }
            
            VStack(alignment:.leading, spacing: 12){
                // Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(Color("ColorGreenMedium"))
                    .lineLimit(1)
                // Headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundStyle(.gray)
                    .italic()
                // Rates
                
                RecipeRatingView(recipe: recipe)
                // Cooking
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            hapticImpact.impactOccurred()
            showModel = true
        }
        .sheet(isPresented: $showModel, content: {
            RecipeDetailView(recipe: recipe)
        })
    }
}

#Preview {
    recipeCardView(recipe: recipesData[0])
}

//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Drashti on 21/12/23.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - Properties
    var recipe: Recipe
    
    @State private var pulsate: Bool = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(.vertical,showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                // Image
                Image(recipe.image)
                    .resizable()
                .scaledToFit()
                
                Group {
                    // Title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    // Rating
                    RecipeRatingView(recipe: recipe)
                    // Cooking
                    RecipeCookingView(recipe: recipe)
                    // Ingredients
                    Text("Ingredients")
                        .fontWeight(.bold)
                        .modifier(titleModifier())
                    
                    VStack(alignment:.leading, spacing: 5){
                        ForEach(recipe.ingredients, id: \.self){ item in
                            VStack(alignment: .leading, spacing: 5){
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                
                                Divider()
                            }
                        }
                    }
                    
                    // Instruction
                    Text("Instructions")
                        .fontWeight(.bold)
                        .modifier(titleModifier())
                    
                    ForEach(recipe.instructions, id: \.self){ item in
                        VStack(alignment: .center, spacing: 5){
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42,height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundStyle(Color("ColorGreenAdaptive"))
                            
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        }
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            }
        }
        .edgesIgnoringSafeArea(.top)
        .overlay {
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundStyle(.white)
                            .shadow(radius: 4)
                            .opacity(pulsate ? 1 : 0.6)
                            .scaleEffect(pulsate ? 1.2 : 0.8, anchor: .center)
                            //.animation(.bouncy(duration: 1.5).repeatForever(autoreverses: true))
                            .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsate)
                    })
                    .padding()
                    Spacer()
                }
            }
        }
        .onAppear(perform: {
            pulsate.toggle()
        })
    }
}

#Preview {
    RecipeDetailView(recipe: recipesData[0])
}

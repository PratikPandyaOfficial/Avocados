//
//  ContentView.swift
//  Avocados
//
//  Created by Drashti on 21/12/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    var headers: [Header] = headersData
    var facts: [Fact] = factData
    var recipes: [Recipe] = recipesData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20, content: {
                // MARK: - Header
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment:.top, spacing: 0) {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                // MARK: - Dishes
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(titleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - Avocado Facts
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(titleModifier())
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top, spacing: 60){
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        }// Foreach
                    }// HStack
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }// Scroll
                
                // MARK: - Recipe Card
                
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(titleModifier())
                
                VStack(alignment:.center, spacing: 20){
                    ForEach(recipes) { recipe in
                        recipeCardView(recipe: recipe)
                    }
                }
                .padding(.horizontal)
                
                // MARK: - Footer
                VStack(alignment:.center, spacing: 20) {
                    Text("All about Avocado")
                        .fontWeight(.bold)
                        .modifier(titleModifier())
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundStyle(Color.gray)
                        .frame(minWidth: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            })
        }
        .ignoresSafeArea()
        .padding(0)
    }
}
struct titleModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundStyle(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

#Preview {
    ContentView(headers: headersData)
}

//
//  DishesView.swift
//  Avocados
//
//  Created by Drashti on 21/12/23.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 4){
            VStack(alignment:. leading, spacing: 4){
                HStack(){
                    Image("icon-toasts")
                        .resizable()
                        .modifier(iconModifier())
                    Spacer()
                    Text("Toasts")
                }
                Divider()
                HStack(){
                    Image("icon-tacos")
                        .resizable()
                        .modifier(iconModifier())
                    Spacer()
                    Text("Tacos")
                }
                Divider()
                HStack(){
                    Image("icon-salads")
                        .resizable()
                        .modifier(iconModifier())
                    Spacer()
                    Text("Salads")
                }
                Divider()
                HStack(){
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(iconModifier())
                    Spacer()
                    Text("Spreads")
                }
            }
            
            VStack(alignment:. center, spacing: 16){
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            VStack(alignment:.trailing, spacing: 4) {
                HStack(){
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(iconModifier())
                }
                Divider()
                HStack(){
                    Text("Sandwiches")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(iconModifier())
                }
                Divider()
                HStack(){
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(iconModifier())
                }
                Divider()
                HStack(){
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(iconModifier())
                }
            }
            
        }
        .font(.system(.callout, design: .serif))
        .foregroundStyle(.gray)
        .padding(.horizontal)
    }
}

struct iconModifier: ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

#Preview {
    DishesView()
}

//
//  RipeningView.swift
//  Avocados
//
//  Created by Drashti on 22/12/23.
//

import SwiftUI

struct RipeningView: View {
    // MARK: - Properties
    @State private var slideInAnimation: Bool = false
    var ripening: Ripening
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.colorGreenLight)
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(.colorAppearanceAdaptive)
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .animation(.easeInOut(duration: 1), value: slideInAnimation)
                .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10){
                // Stage
                VStack(alignment: .center, spacing: 10){
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    Text("STAGE")
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                }
                .foregroundStyle(.colorGreenMedium)
                .padding(.top, 65)
                .frame(width: 180)
                // Title
                Text(ripening.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundStyle(.colorGreenMedium)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [.white, .colorGreenLight]), startPoint: .top, endPoint: .bottom)
                                
                            )
                            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 6)
                    )
                // Description
                Spacer()
                Text(ripening.description)
                    .foregroundStyle(.colorGreenDark)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                // Ripeness
                Text(ripening.ripening)
                    .foregroundStyle(.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(
                                LinearGradient(gradient: Gradient(colors: [.colorGreenMedium, .colorGreenDark]), startPoint: .top, endPoint: .bottom)
                            )
                            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 6)
                    )
                // Instruction
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundStyle(.colorGreenLight)
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
            }
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom)
            )
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            slideInAnimation = true
        })
    }
}

#Preview {
    RipeningView(ripening: ripeningData[0])
}

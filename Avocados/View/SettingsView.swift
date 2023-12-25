//
//  SettingsView.swift
//  Avocados
//
//  Created by Drashti on 21/12/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @State private var enableNotification: Bool = true
    @State private var bacgroundRefresh: Bool = false
    var body: some View {
        VStack(alignment: .center, spacing: 0){
            // MARK: - Header
            VStack(alignment:.center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundStyle(.colorGreenAdaptive)
            }
            .padding()
            
            Form {
                // MARK: - Section 1
                Section {
                    Toggle(isOn: $enableNotification, label: {
                        Text("Enable notification")
                    })
                    
                    Toggle(isOn: $bacgroundRefresh, label: {
                        Text("BackgroundRefresh")
                    })
                } header: {
                    Text("General Settings")
                }
                
                // MARK: - Section 2
                Section {
                    if enableNotification {
                        HStack{
                            Text("Product")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack{
                            Text("Compatibility")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack{
                            Text("Developer")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("Pratik Pandya")
                        }
                        HStack{
                            Text("Designer")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("Pratik")
                        }
                        HStack{
                            Text("Website")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("google.co.in")
                        }
                        HStack{
                            Text("Version")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack{
                            Text("Personal message")
                                .foregroundStyle(.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                    
                    
                } header: {
                    Text("Application")
                }


            }
        }
        .frame(maxWidth: 640, maxHeight: 640)
    }
}

#Preview {
    SettingsView()
}

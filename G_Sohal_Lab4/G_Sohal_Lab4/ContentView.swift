//
//  ContentView.swift
//  G_Sohal_Lab4
//
//  Created by Ricky Singh on 10/5/26.
//

import SwiftUI

struct ContentView: View {
    let textColor = Color(
        red: 0 / 255,
        green: 0 / 255,
        blue: 128 / 255
    )
    var body: some View {
        NavigationView {
            ZStack {
                Color(.blue)
                    .ignoresSafeArea()

                VStack {
                    NavigationLink(destination: bostonView()) {
                        Text("Boston")
                            .padding()
                            .frame(minWidth: 200)
                            .background(textColor)
                            .foregroundColor(Color.white)
                            .cornerRadius(100)
                            .padding(.bottom, 10)

                    }
                    NavigationLink(destination: nashvilleView()) {
                        Text("Nashvile")
                            .padding()
                            .frame(minWidth: 200)
                            .background(textColor)
                            .foregroundColor(Color.white)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }
                    NavigationLink(destination: nycView()) {
                        Text("New York City")
                            .padding()
                            .frame(minWidth: 200)
                            .background(textColor)
                            .foregroundColor(Color.white)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }
                    NavigationLink(destination: miamiView()) {
                        Text("Miami")
                            .padding()
                            .frame(minWidth: 200)
                            .background(textColor)
                            .foregroundColor(Color.white)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }
                    NavigationLink(destination: dallasView()) {
                        Text("Dallas")
                            .padding()
                            .frame(minWidth: 200)
                            .background(textColor)
                            .foregroundColor(Color.white)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }
                    NavigationLink(destination: denverView()) {
                        Text("Denver")
                            .padding()
                            .frame(minWidth: 200)
                            .background(textColor)
                            .foregroundColor(Color.white)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }
                    NavigationLink(destination: chicagoView()) {
                        Text("Chicago")
                            .padding()
                            .frame(minWidth: 200)
                            .background(textColor)
                            .foregroundColor(Color.white)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }
                    NavigationLink(destination: seattleView()) {
                        Text("Seattle")
                            .padding()
                            .frame(minWidth: 200)
                            .background(textColor)
                            .foregroundColor(Color.white)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }
                }.navigationTitle("U.S CITIES")

            }
        }
    }
}

#Preview {
    ContentView()
}

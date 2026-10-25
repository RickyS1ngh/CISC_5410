//
//  ContentView.swift
//  G_Sohal_Lab5
//
//  Created by Ricky Singh on 10/18/26.
//

import SwiftUI

struct ContentView: View {
    let textButtonColor = Color(
        red: 239 / 255,
        green: 191 / 255,
        blue: 4 / 255
    )

    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemFill)
                    .ignoresSafeArea()
                VStack {
                    NavigationLink(destination: CurrencyView()) {
                        Text("World Currency Abbreivations")
                            .padding()
                            .frame(maxWidth: 300)
                            .background(textButtonColor)
                            .foregroundColor(Color.black)
                            .cornerRadius(100)
                            .padding(.bottom, 10)

                    }
                    NavigationLink(destination: TodosView()) {
                        Text("To Do")
                            .padding()
                            .frame(maxWidth: 300)
                            .background(textButtonColor)
                            .foregroundColor(Color.black)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }
                    NavigationLink(destination: StatesView()) {
                        Text("US States")
                            .padding()
                            .frame(maxWidth: 300)
                            .background(textButtonColor)
                            .foregroundColor(Color.black)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }

                    NavigationLink(destination: RosterView()) {
                        Text("Knick Roster 2026-2027")
                            .padding()
                            .frame(maxWidth: 300)
                            .background(textButtonColor)
                            .foregroundColor(Color.black)
                            .cornerRadius(100)
                            .padding(.bottom, 10)
                    }
                }
                .navigationBarTitle("Lab 5 JSON Parsing")
            }
        }
    }
}

#Preview {
    ContentView()
}


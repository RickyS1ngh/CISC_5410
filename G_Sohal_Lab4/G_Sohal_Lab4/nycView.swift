//
//  nycView.swift
//  G_Sohal_Lab4
//
//  Created by Ricky Singh on 10/6/26.
//

import SwiftUI

struct nycView: View {
    @State private var cityInfo: String = ""
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()

            VStack {
                Text("New York City")
                    .font(.title)
                    .bold()
                Spacer()
                Image("nyc")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.black)
                    }
                    .padding()
                Spacer()
                Text(cityInfo)
                    .padding()
                    .frame(
                        width: 400,
                        height: 200,
                        alignment:
                            .leading
                    )

                    .background(
                        Color(
                            red: 0 / 255,
                            green: 0 / 255,
                            blue: 128 / 255
                        )
                    )
                    .foregroundColor(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 15))

            }  // end VStack
            .padding()
            .onAppear {
                cityInfo =
                    "Fun Fact: The first pizzeria in the United States opened in NYC in 1895. The picture is that of Times Square."
            }
        }
    }  // end body
}  // end struct

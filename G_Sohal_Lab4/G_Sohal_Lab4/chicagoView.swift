//
//  chicagoView.swift
//  G_Sohal_Lab4
//
//  Created by Ricky Singh on 10/6/26.
//

import SwiftUI

struct chicagoView: View {
    @State private var cityInfo: String = ""
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()

            VStack {
                Text("Chicago")
                    .font(.title)
                    .bold()
                Spacer()
                Image("chicago")
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
                    "Fun Fact: The Ferris wheel was invented in Chicago 1893 for presentation at the World's Columbia Exposition The picture is that the Chicago skyline."
            }
        }
    }  // end body
}  // end struct

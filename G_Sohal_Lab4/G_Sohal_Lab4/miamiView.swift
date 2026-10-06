//
//  miamiView.swift
//  G_Sohal_Lab4
//
//  Created by Ricky Singh on 10/6/26.
//

import SwiftUI

struct miamiView: View {
    @State private var cityInfo: String = ""
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()

            VStack {
                Text("Miami")
                    .font(.title)
                    .bold()
                Spacer()
                Image("miami")
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
                    "Fun Fact: Miami is notably the only major American city to be founded by a woman.. The picture is that of an aeiral view of the Miami skyline."
            }
        }
    }  // end body
}  // end struct

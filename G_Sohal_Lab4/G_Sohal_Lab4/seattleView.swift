//
//  seattleView.swift
//  G_Sohal_Lab4
//
//  Created by Ricky Singh on 10/6/26.
//

import SwiftUI

struct seattleView: View {
    @State private var cityInfo: String = ""
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()

            VStack {
                Text("Seattle")
                    .font(.title)
                    .bold()
                Spacer()
                Image("seattle")
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
                    "Fun Fact: Seattle has an entire wall filled with used gum. The picture is that of an aeiral view of the Seattle skyline."
            }
        }
    }  // end body
}  // end struct

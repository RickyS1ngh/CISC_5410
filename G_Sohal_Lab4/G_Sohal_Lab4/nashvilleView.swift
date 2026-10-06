//
//  nashvilleView.swift
//  G_Sohal_Lab4
//
//  Created by Ricky Singh on 10/6/26.
//

import SwiftUI

struct nashvilleView: View {
    @State private var cityInfo: String = ""
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()

            VStack {
                Text("Nashville")
                    .font(.title)
                    .bold()
                Spacer()
                Image("nashville")
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
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
                    "Fun Fact: Nashville built the world’s only full-scale replica of the Greek Parthenon in 1897 for the Tennessee Centennial Exposition. The picture is that of the Nashville skyline."
            }
        }
    }  // end body
}  // end struct

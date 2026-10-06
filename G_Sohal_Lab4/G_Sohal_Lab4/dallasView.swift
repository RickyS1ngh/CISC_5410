//
//  dallasView.swift
//  G_Sohal_Lab4
//
//  Created by Ricky Singh on 10/6/26.
//

import SwiftUI

struct dallasView: View {
    @State private var cityInfo: String = ""
    var body: some View {
        ZStack {
            Color(.blue)
                .ignoresSafeArea()

            VStack {
                Spacer()
                Text("Dallas")
                    .font(.title)
                    .bold()
                Image("dallas")
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
                    "Fun Fact: The Dallas/Fort Worth airport is larger than New York City’s Manhattan Island. It is also home to the world’s largest parking lot The picture is that of the Dallas skyline"
            }
        }
    }  // end body
}  // end struct

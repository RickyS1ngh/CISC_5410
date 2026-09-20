//
//  ContentView.swift
//  G_Sohal_Lab1
//
//  Created by Ricky Singh on 9/12/26.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = "";
    @State private var val: Double = 80;
    
    var body: some View {
        ZStack {
            Color(red: 137/255, green: 2077/255, blue: 244/255)
                .ignoresSafeArea()
            
            VStack {
                HStack{
                    Text("CISC 5410 Lab 1 Assignment")
                        .bold()
                        .underline()
                        .font(.title2)
                    Image(systemName: "desktopcomputer")
                        

                }
                Text("September 13, 2026")
                    .italic()
                    .textCase(.uppercase)
                HStack{
                    TextField("Enter your name...", text: $name)
                        .textFieldStyle(.roundedBorder)
                        .foregroundColor(.blue)
                        .cornerRadius(20)
                        .padding()
                }
                
                HStack {
                    Rectangle()
                        .fill(.indigo)
                        .frame(width: 200, height: 100)
                        .padding()
                    Circle()
                        .fill(.yellow)
                        .stroke(.orange)
                }.padding()
                
                Image("swiftImage")
                    .resizable()
                    .border(.orange, width: 10)
                    .scaledToFit()
                
                Text("Expected Grade \(val, specifier: "%.1f" )")
                    .strikethrough()
                    .bold()
                   
                Slider(value: $val, in: 0...100)
                    .tint(.red)
                    .frame(width: 300)
                    
                HStack{
                    Button("Submit"){
                    }
                    .padding(10)
                    .font(.body)
                    .foregroundColor(.white)
                    .background(.blue)
                    .buttonStyle(.borderedProminent)
                    .accessibility(label: Text("Submit Button"))
                    .clipShape(Capsule())
                    
                }
                
            }
        }
    }
        
        
    }
 


#Preview {
    ContentView()
}

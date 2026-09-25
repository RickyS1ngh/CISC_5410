//
//  ContentView.swift
//  G_Sohal_Lab3
//
//  Created by Ricky Singh on 9/25/26.
//

import SwiftUI

struct ContentView: View {
    @State private var card1: String = "card1"
    @State private var card2: String = "card2"
    @State private var card3: String = "card3"
    @State private var card4: String = "card4"
    @State private var card5: String = "card5"
    @State private var card6: String = "card6"
    @State private var card7: String = "card7"
    @State private var card8: String = "card8"
    @State private var card9: String = "card9"
    @State private var card10: String = "card10"
    @State private var resultMessage: String = "";
    @State private var cards: [Int] = [];
    
    
    var body: some View {
        VStack {
            HStack{
                Image(card1)
                    .resizable()
                Image(card2)
                    .resizable()
            }
            HStack{
                Image(card3)
                    .resizable()
                Image(card4)
                    .resizable()
            }
            HStack{
                Image(card5)
                    .resizable()
                Image(card6)
                    .resizable()
            }
            HStack{
                Image(card7)
                    .resizable()
                Image(card8)
                    .resizable()
            }
            HStack{
                Image(card9)
                    .resizable()
                Image(card10)
                    .resizable()
            }
            Button(action: {
                //
                // Swift Code-generate random number between 1 and 13
                //
                var randomNumber:Int = 0
                for i in 1...10 {
                    if i == 1 {
                        randomNumber = Int.random(in: 1...10)
                        card1 = "card" + String(randomNumber)
                    }
                    else if i == 2 {
                        randomNumber = Int.random(in: 1...10)
                        card2 = "card" + String(randomNumber)
                    }
                    else if i == 3 {
                        randomNumber = Int.random(in: 1...10)
                        card3 = "card" + String(randomNumber)
                    }
                    else if i == 4 {
                        randomNumber = Int.random(in: 1...10)
                        card4 = "card" + String(randomNumber)
                    }
                    else if i == 5 {
                        randomNumber = Int.random(in: 1...10)
                        card5 = "card" + String(randomNumber)
                    }
                    else if i == 6 {
                        randomNumber = Int.random(in: 1...10)
                        card6 = "card" + String(randomNumber)
                    }
                    else if i == 7 {
                        randomNumber = Int.random(in: 1...10)
                        card7 = "card" + String(randomNumber)
                    }
                    else if i == 8 {
                        randomNumber = Int.random(in: 1...10)
                        card8 = "card" + String(randomNumber)
                    }
                    else if i == 9 {
                        randomNumber = Int.random(in: 1...10)
                        card9 = "card" + String(randomNumber)
                    }
                    else if i == 10 {
                        randomNumber = Int.random(in: 1...10)
                        card10 = "card" + String(randomNumber)
                    }
                    
                    cards.append(randomNumber);
                    
                    
                   
                } // end for loop
                
                var high = cards.max()
                var low = cards.min()
                resultMessage = "High: \(high!) " + "\n" +
                  "Low : \(low!) " + "\n" +
                  "Freq :"
                cards = []
                
            }, label: {
                Text("RANDOM")
                    .padding()
                    .foregroundColor(Color.green)
                    .font(.largeTitle)
            }) // end button
            Text(resultMessage)
                .frame(width: 275, height: 70, alignment: .leading)
                .background(Color.green)
                .foregroundColor(Color.black)
        }
    }
}

#Preview {
    ContentView()
}

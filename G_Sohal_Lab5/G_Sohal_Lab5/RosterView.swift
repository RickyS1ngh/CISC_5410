//
//  RosterView.swift
//  G_Sohal_Lab5
//
//  Created by Ricky Singh on 10/18/26.
//

import SwiftUI

struct Player: Decodable {
    let name: String
    let jerseyNumber: String
    let age: Int
    let position: String
    let college: String

}

struct RosterView: View {
    @State private var roster = [Player]()
    var body: some View {
        NavigationView {
            List(roster, id: \.jerseyNumber) { player in
                VStack(alignment: .leading) {
                    HStack {
                        Text(player.name)
                            .font(.headline)
                            .foregroundColor(.blue)
                            .bold()
                        
                        Text(player.jerseyNumber)
                            .font(.body)
                            .bold()
                            .foregroundColor(.orange)

                    }
                    HStack {
                        Text("age: " + String(player.age))
                            .font(.body)
                            .bold()
                    }
                    HStack{
                        Text("position: " + player.position)
                            .font(.body)
                            .bold()
                    }
                    HStack {
                        Text("college: " + player.college)
                            .font(.body)
                            .bold()
                    }
                    
                }
            }
        }
        .navigationTitle("Knicks Roster 26-27")
        .task {
            await fetchRosterData()
        }
    }
    func fetchRosterData() async {
        guard
            let url = URL(
                string: "https://storm.cis.fordham.edu/~gsohal/roster.json"
            )
        else {
            print("URL is invalid")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            if let decodedResponse = try? JSONDecoder().decode(
                [Player].self,
                from: data
            ) {
                roster = decodedResponse
            }
        } catch {

        }

    }
}

struct RosterView_Previews: PreviewProvider {
    static var previews: some View {
        RosterView()
    }
}

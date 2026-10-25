//
//  StatesView.swift
//  G_Sohal_Lab5
//
//  Created by Ricky Singh on 10/19/26.
//


import SwiftUI

struct State: Decodable {
    let name: String
    let state_code: String
}

struct StateData: Decodable {
    let states: [State]
}

struct StateList: Decodable {
    let data: StateData
}

struct StatesView: View {
    @State private var states = [State]()

    var body: some View {
        NavigationView {
            List(states, id: \.state_code) { state in
                HStack {
                    Text(state.name)
                        .font(.headline)
                        .foregroundColor(.red)
                        .bold()

                    Text(state.state_code)
                        .font(.body)
                        .bold()
                        .foregroundColor(.blue)
                }
            }
            .navigationTitle("US States")
        }
        .task {
            await fetchStatesData()
        }
    }

    func fetchStatesData() async {
        guard let url = URL(
            string: "https://countriesnow.space/api/v0.1/countries/states/q?country=United%20States"
        ) else {
            print("URL is invalid")
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            let decodedResponse = try JSONDecoder().decode(
                StateList.self,
                from: data
            )

            states = decodedResponse.data.states

        } catch {
            print("Failed to fetch states:", error)
        }
    }
}

struct StatesView_Previews: PreviewProvider {
    static var previews: some View {
        StatesView()
    }
}

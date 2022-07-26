//
//  ContentView.swift
//  Programming Jokes
//
//  Created by Ethan McHugh on 7/26/22.
//

import SwiftUI

struct ContentView: View {
    @State private var jokes = [Joke]()
    var body: some View {
        NavigationView{
            List(jokes) { joke in
                NavigationLink(destination: Text(joke.punchline)
                    .padding()){
                        Text(joke.setup)
                    }
            }
            .navigationTitle("Programming jokes")
        }
        .onAppear{
            getJokes()
        }
    }
    func getJokes() {
        let apiKey = "?rapidapi-key=56eec672d2msh2dda640b00f3b2fp1ca44cjsn457b4554b742"
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Joke: Identifiable {
    let id = UUID()
    var setup = ""
    var punchline = ""
}

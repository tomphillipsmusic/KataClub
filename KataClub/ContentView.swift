//
//  ContentView.swift
//  KataClub
//
//  Created by Tom Phillips on 1/13/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: PyramidOfOnesInstructions()) {
                    Text("Pyramid of 1s")
                }
            }
            .navigationTitle("Kata Club")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

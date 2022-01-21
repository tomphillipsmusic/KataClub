//
//  ContentView.swift
//  KataClub
//
//  Created by Tom Phillips on 1/13/22.
//



//HI! WELCOME TO KATA CLUB :)
//RUN THIS APP IN THE SIMULATOR (Press the Play button - Not the preview area) TO SEE AVAILABLE CODING CHALLENGES!











import SwiftUI
//This navigation view holds all of the available coding problems, available via NavigationLinks.
struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DynamicTriangleView()) {
                    Text("Dynamic Triangle (Logic)")
                }
                NavigationLink(destination: FeaturedAppHelperView()) {
                    Text("Featured App (Interface)")
                }
                NavigationLink(destination: PodcastEpisodeHelperView()) {
                    Text("Podcast Episode (Interface)")
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

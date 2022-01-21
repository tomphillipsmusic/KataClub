//
//  PodcastEpisodeHelperView.swift
//  KataClub
//
//  Created by Zoe Cutler on 1/21/22.
//

import SwiftUI

//This helper view describes the interface challenge for this week.
struct PodcastEpisodeHelperView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack (alignment: .leading){
                    Text("Episode View")
                        .font(.largeTitle)
                    Text("Podcasts")
                        .font(.title)
                    Divider()
                    //The triple-double quotes help us type a multi-line string.
                    Text("""
                        Recreate this interface in the PodcastEpisodeView.swift file.
                        
                        The NavigationLink below will take you to the PodcastEpisodeView page, for preview purposes.
                        """)
                    Divider()
                }
                .padding()
                //This NavigationLink will not work unless running in the simulator.
                NavigationLink("PodcastEpisodeView") {
                    PodcastEpisodeView()
                }
                Divider()
                //This is how the PodcastEpisodeView should look once completed.
                Image("PodcastEpisodeHiFi")
                    .resizable()
                    .scaledToFit()
                    .accessibilityLabel(Text("Prototype of a "))
            }
        }
    }
}

struct PodcastEpisodeHelperView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastEpisodeHelperView()
    }
}

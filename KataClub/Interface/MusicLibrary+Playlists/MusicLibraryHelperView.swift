//
//  MusicLibraryHelperView.swift
//  KataClub
//
//  Created by Zoe Cutler on 2/14/22.
//

import SwiftUI

struct MusicLibraryHelperView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack (alignment: .leading){
                    Text("Music Library + Playlists")
                        .font(.largeTitle)
                    Text("Music")
                        .font(.title)
                    Divider()
                    //The triple-double quotes help us type a multi-line string.
                    Text("""
                        The images below are TWO screens from a Hi-Fi that the design team gave you. These designers are Super Cool, so they only sent you the dark mode version. (You can also find the Hi-Fis in the assets folder under MusicLibraryViewHiFi and MusicPlaylistsViewHiFi.)
                        
                        Try to recreate the first interface in the MusicLibraryView.swift file.
                        
                        THEN, try to recreate the second interface in the MusicPlaylistsView.swift file.
                        
                        THEN, add a NavigationLink from the Playlists row in MusicLibraryView to MusicPlaylistsView.
                        
                        The NavigationLink below will take you to the MusicLibraryView page, for preview purposes.
                        """)
                    Divider()
                }
                .padding()
                //This NavigationLink will not work unless running in the simulator.
                NavigationLink("MusicLibraryView") {
                    MusicLibraryView()
                }
                Divider()
                //This is how the MusicLibraryView should look once completed.
                Image("MusicLibraryViewHiFi")
                    .resizable()
                    .scaledToFit()
                    .accessibilityLabel(Text("Prototype of the Apple Music app. Heading says Library, and then there are rows that say Playlists, Artists, Albums, Songs, Music Videos, Genres, Compilations, and Composers. Each row has an SF Symbol. There is an edit button in the top right."))
                Divider()
                //This is how the MusicPlaylistsView should look once completed.
                Image("MusicPlaylistsViewHiFi")
                    .resizable()
                    .scaledToFit()
                    .accessibilityLabel(Text("Prototype of the Apple Music app. Heading says Playlists. The navigation bar has a back button that says Library, and a button on the right that says Sort. In the middle of the page there is text saying Looking for your playlists? Playlists you create will appear here. Below that there is a red button that says New Playlist."))
            }
        }
    }
}

struct MusicLibraryHelperView_Previews: PreviewProvider {
    static var previews: some View {
        MusicLibraryHelperView()
    }
}

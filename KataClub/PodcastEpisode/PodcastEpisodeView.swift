//
//  PodcastEpisodeView.swift
//  KataClub
//
//  Created by Zoe Cutler on 1/21/22.
//

import SwiftUI

//TODO: Recreate the interface shown in PodcastEpisodeHelperView in this View below.
/* Hints:
 -Avoid using .frame, .offset, and .position to ensure it looks good on many screen sizes.
 -Use the custom color Color.highContrastPurple.
 */
struct PodcastEpisodeView: View {
    var body: some View {
        //TODO: Here is where the code for the interface goes!
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct PodcastEpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        PodcastEpisodeView()
            .previewDevice("iPhone 12")
            .preferredColorScheme(.dark)
        PodcastEpisodeView()
            .environment(\.sizeCategory, .extraSmall)
            .previewDevice("iPhone 12 Pro Max")
        PodcastEpisodeView()
            .environment(\.sizeCategory, .accessibilityLarge)
            .previewDevice("iPhone 12 mini")
    }
}

//
//  FeaturedAppView.swift
//  KataClub
//
//  Created by Zoe Cutler on 1/19/22.
//

import SwiftUI

//TODO: Recreate the interface shown in FeaturedAppHelperView in this View below.
/* Hints:
 -Avoid using .frame, .offset, and .position to ensure it looks good on many screen sizes.
 -Use the custom colors Color.background and Color.highContrastGray.
 -Use the Image asset called GrandMountain.
 */

struct FeaturedAppView: View {
    var body: some View {
        //TODO: Make the interface.
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


//This is the previews area. Some different phone sizes are provided so you can see how it looks on different screens.
struct FeaturedAppView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedAppView()
            .previewDevice("iPhone 12")
        FeaturedAppView()
            .environment(\.sizeCategory, .accessibilityLarge)
            .previewDevice("iPhone 12 mini")
            .preferredColorScheme(.dark)
    }
}

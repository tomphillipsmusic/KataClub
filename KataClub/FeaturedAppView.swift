//
//  FeaturedAppView.swift
//  KataClub
//
//  Created by Zoe Cutler on 1/19/22.
//

import SwiftUI

//TODO: Recreate the interface shown in FeaturedAppHelperView in this View below.
/*Hints:
 -Avoid using .frame, .offset, and .position to ensure it looks good on many screen sizes.
 -Use the custom colors Color.background and Color.highContrastGray.
 */
struct FeaturedAppView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

//TODO: Mentors should delete this area before putting it out, and change the previews back to FeaturedAppView()
struct FeaturedAppViewAnswer: View {
    var body: some View {
        VStack {
            Image("GrandMountain")
                .resizable()
                .scaledToFit()
            HStack {
                VStack (alignment: .leading) {
                    Text("FEATURED GAME")
                        .font(.headline)
                        .foregroundColor(.highContrastGray)
                    Text("Grand Mountain Adventure")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding(.bottom, 1.0)
                    Text("Carve up some powder in this stunning ski park.")
                        .foregroundColor(.highContrastGray)
                }
                .padding()
                Spacer()
            }
        }
        .cornerRadius(15.0)
        .background {
            RoundedRectangle(cornerRadius: 15.0)
                .foregroundColor(.background)
                .shadow(radius: 10.0)
        }
        .padding()
    }
}

struct FeaturedAppView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedAppViewAnswer()
            .previewDevice("iPhone 12")
        FeaturedAppViewAnswer()
            .environment(\.sizeCategory, .accessibilityLarge)
            .previewDevice("iPhone 12 mini")
            .preferredColorScheme(.dark)
    }
}

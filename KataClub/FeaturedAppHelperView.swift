//
//  FeaturedAppHelperView.swift
//  KataClub
//
//  Created by Zoe Cutler on 1/19/22.
//

import SwiftUI

struct FeaturedAppHelperView: View {
    var body: some View {
        ScrollView {
            VStack {
                VStack (alignment: .leading){
                    Text("Featured App View")
                        .font(.largeTitle)
                    Text("App Store")
                        .font(.title)
                    Divider()
                    Text("""
                        Recreate this interface in the FeaturedAppView.swift file.
                        
                        The NavigationLink below will take you to the FeaturedAppView page, for preview purposes.
                        """)
                    Divider()
                }
                .padding()
                NavigationLink("FeaturedAppView") {
                    FeaturedAppView()
                }
                Divider()
                Image("FeaturedAppHiFi")
                    .resizable()
                    .scaledToFit()
                    .accessibilityLabel(Text("Prototype of a Featured App in the App Store. The app is a game called 'Grand Mountain Adventure.' The tagline above says 'Featured Game,' and the description says 'Carve up some powder in this stunning ski park.'"))
            }
        }
    }
}

struct FeaturedAppHelperView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedAppHelperView()
    }
}

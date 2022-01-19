//
//  FeaturedAppHelperView.swift
//  KataClub
//
//  Created by Zoe Cutler on 1/19/22.
//

import SwiftUI

//This view describes the interface to be built in the FeaturedAppView. Do not edit this to solve the problem, instead edit FeaturedAppView.
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
                    //The triple-double quotes help us type a multi-line string.
                    Text("""
                        Recreate this interface in the FeaturedAppView.swift file.
                        
                        The NavigationLink below will take you to the FeaturedAppView page, for preview purposes.
                        """)
                    Divider()
                }
                .padding()
                //This NavigationLink will not work unless running in the simulator.
                NavigationLink("FeaturedAppView") {
                    FeaturedAppView()
                }
                Divider()
                //This is how the FeaturedAppView should look once completed.
                Image("FeaturedAppHiFi")
                    .resizable()
                    .scaledToFit()
                    .accessibilityLabel(Text("Prototype of a Featured App in the App Store. The app is a game called 'Grand Mountain Adventure.' The tagline above says 'Featured Game,' and the description says 'Carve up some powder in this stunning ski park.'"))
            }
        }
    }
}

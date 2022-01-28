//
//  Color+Extension.swift
//  KataClub
//
//  Created by Zoe Cutler on 1/19/22.
//

import SwiftUI

//This Color extension facilitates the use of Custom Colors from the assets folder.
extension Color {
    public static var highContrastGray: Color {
        return Color("HighContrastGray", bundle: nil)
    }
    public static var background: Color {
        return Color("Background", bundle: nil)
    }
    public static var highContrastPurple: Color {
        return Color("HighContrastPurple", bundle: nil)
    }
    public static var lightGray: Color {
        return Color("LightGray", bundle: nil)
    }
}

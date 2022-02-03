//
//  SubstringView.swift
//  KataClub
//
//  Created by Tyler Lawrence on 2/3/22.
//

import SwiftUI

struct SubstringView: View {
    
    let instructions: String = """
    You are given two strings, S and x. Count the number of times that the string x occurs within the string S.

    Example:
        S = "I love to say riqriqriq"
        x = "riq"
        occurrences = 3
    
    """
    
    var body: some View {
        VStack{
            Text("Substrings")
                .font(.largeTitle)
            Text(instructions)
                .padding([.leading, .trailing])
        }
    }
    
    // TODO: Fill in the function to count how many times inputSubstring occurs within inputString
    func calculateOccurrences(inputString:String, inputSubstring:String) -> Int {
        return 0
    }
}

struct SubstringView_Previews: PreviewProvider {
    static var previews: some View {
        SubstringView()
    }
}

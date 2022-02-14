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
    
    @State private var inputStringExample: String = ""
    @State private var inputSubstringExample: String = ""
    
    @State private var output: Int = 0
    
    var body: some View {
        VStack{
            Text("Substrings")
                .font(.largeTitle)
            Text(instructions)
                .padding([.leading, .trailing])
            Divider()
            
            Button("generate random input strings"){
                inputSubstringExample = generateRandomInputs().0
                inputStringExample = generateRandomInputs().1
            }
            //Text("string: \(inputStringExample)")
            //Text("substring: \(inputSubstringExample)")
            Divider()
            
            if !inputStringExample.isEmpty{
                Text("count how many times '\(inputSubstringExample)' occurs in '\(inputStringExample)'")
                Button("count occurrences of substring"){
                    output = calculateOccurrences(inputString: inputStringExample, inputSubstring: inputSubstringExample)
                }
                Text("\(output)")
            }
            
        }
    }
    
    // TODO: Fill in the function to count how many times inputSubstring occurs within inputString
    func calculateOccurrences(inputString:String, inputSubstring:String) -> Int {
        return 0
    }
    
    func generateRandomInputs() -> (String, String) {
        
        let letters = ["k", "o", "t"]
        
        var inputSubstring = ""
        var inputString = ""
        
        for _ in 1...1{
            inputSubstring+=letters.randomElement()!
        }

        for _ in 1...9{
            inputString+=letters.randomElement()!
        }
        
        return (inputSubstring, inputString)
    }
}

struct SubstringView_Previews: PreviewProvider {
    static var previews: some View {
        SubstringView()
    }
}

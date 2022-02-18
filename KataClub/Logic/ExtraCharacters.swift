//
//  ExtraCharacters.swift
//  KataClub
//
//  Created by Zoe Cutler on 2/17/22.
//

import SwiftUI

struct ExtraCharacters: View {
    let instructions: String = """
    You've been given a string that states how much money your company made today. Unfortunately, the string has been corrupted and contains extraneous characters. Rather than fix the source of the problem, your boss has asked you to create a program that removes any unneccessary characters and return the corrected string.
    
    The expected characters are digits, ' $ ', and ' . '

    Example:
        Given: v$ x 10GFa. 9kL5
        Expected: $10.95
    
    """
    
    @State private var messyStringExample: String = ""
    @State private var cleanedUpStringExample: String = ""
    
    var body: some View {
        VStack{
            Text("Extra Characters")
                .font(.largeTitle)
            Text(instructions)
                .padding([.leading, .trailing])
            Divider()
            
            Button("generate random input strings"){
                messyStringExample = generateRandomInputs()
            }
            Divider()
            
            if !messyStringExample.isEmpty {
                Text("\(messyStringExample)")
                Divider()
                Button("Clean Up"){
                    cleanedUpStringExample = cleanUp(messyString: messyStringExample)
                }
                Divider()
                Text("\(cleanedUpStringExample)")
            }
            
        }
    }
    
    // TODO: Fill in the function to count how many times inputSubstring occurs within inputString
    func cleanUp(messyString: String) -> String {
        return ""
    }
    
    func generateRandomInputs() -> String {
        
        var originalString = "$"
        
        let randomInt = Int.random(in: 2..<6)
        
        for _ in 0..<randomInt {
            originalString.append(String(Int.random(in: 0..<10)))
        }
        
        originalString.append(".")
        
        for _ in 0..<2 {
            originalString.append(String(Int.random(in: 0..<10)))
        }
        
        let randomInt2 = Int.random(in: 7..<22)
        
        for _ in 0..<randomInt2 {
            let char = "DSKJBSKJnsjdhdosdjfn^@&(#^*@#&'/".randomElement() ?? "a"
            
            originalString.insert(char, at: String.Index(utf16Offset: Int.random(in: 0..<originalString.count), in: originalString))
        }
        
        return originalString
    }
}

struct ExtraCharacters_Previews: PreviewProvider {
    static var previews: some View {
        ExtraCharacters()
    }
}

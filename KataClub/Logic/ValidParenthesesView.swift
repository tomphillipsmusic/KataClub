//
//  ValidParenthesesView.swift
//  KataClub
//
//  Created by Zoe Cutler on 3/29/22.
//

import SwiftUI

struct ValidParenthesesView: View {
    let instructions: String = """
    You're writing a compiler for a new programming language, and you want to implement a parentheses-checking feature. Your users want to know whether their parentheses and brackets match up correctly, so they can fix errors before running broken code.
    
    To get started on this problem, you need to write a function that returns TRUE if you see parentheses in the correct order, and FALSE if not. For simplicity, you want to start with strings containing ONLY these characters:
    
    ( ) [ ] { }
    
    Rules:
        Open brackets must be closed by the same type of brackets.
        Open brackets must be closed in the correct order.

    Valid Examples: (return TRUE)
        ()
        ()[]
        {()[]}
        blank string
    
    """
    
    @State private var inputStringExample: String = ""
    @State private var validExample: Bool? = nil
    
    var body: some View {
        ScrollView {
            VStack{
                Text("Valid Parentheses")
                    .font(.largeTitle)
                Divider()
                Text(instructions)
                    .padding([.leading, .trailing])
                Divider()
                
                Button("generate random input strings"){
                    inputStringExample = generateRandomInputs()
                }
                Divider()
                
                if !inputStringExample.isEmpty {
                    Text("\(inputStringExample)")
                    Divider()
                    Button("Test"){
                        validExample = checkValidityOfParentheses(input: inputStringExample)
                    }
                    Divider()
                    if validExample != nil {
                        Text("\(validExample!.description)")
                    }
                }
                
            }
        }
    }
    
    // TODO: Fill in the function to check if the input string has valid parentheses and brackets.
    func checkValidityOfParentheses(input: String) -> Bool {
        return false
    }
    
    func generateRandomInputs() -> String {
        var returnString = ""
        
        let whichPath = Int.random(in: 1...3)
        
        if whichPath == 1 {
            let numberOfChars = Int.random(in: 2...8)
            let availableChars = "()[]{}"
            
            for _ in 0..<numberOfChars {
                returnString.append(availableChars.randomElement() ?? Character(""))
            }
        } else if whichPath == 2 {
            let numberOfStrings = Int.random(in: 1...4)
            let availableStrings = ["()", "[]", "{}"]
            
            for _ in 0..<numberOfStrings {
                returnString.append(availableStrings.randomElement() ?? "")
            }
        } else {
            let numberOfPairs = Int.random(in: 2...5)
            let availableStrings = ["()", "[]", "{}"]
            
            for _ in 0..<numberOfPairs {
                if returnString.isEmpty {
                    returnString.append(availableStrings.randomElement() ?? "")
                } else {
                    returnString.insert(contentsOf: availableStrings.randomElement() ?? "", at: String.Index(utf16Offset: Int.random(in: 0..<returnString.count), in: returnString))
                }
            }
        }
        
        return returnString
    }
}

struct ValidParenthesesView_Previews: PreviewProvider {
    static var previews: some View {
        ValidParenthesesView()
    }
}

//
//  PyramidOfOnes.swift
//  KataClub
//
//  Created by Tyler Lawrence on 1/13/22.
//

import SwiftUI

struct DynamicTriangleView: View {
    
    let exampleResult: String = """
    1
    11
    111
    11
    1
    """
    
    let invalidInputText = "Invalid Input"
    
    @State private var height: String = ""
    @State private var result: String = ""
    
    var body: some View {
        ScrollView {
            VStack{
                Text("Dynamic Triangle")
                    .font(.largeTitle)
                    .padding()
                
                Text("Make a function that creates a triangle of '1's. The first row should have one '1' the second has two '1's until the given number (n). After printing n 1's start to go down until you get to one '1'. This should be one string...not a VStack 😀. If a user enters text or a number lower than 1, return the invalid input text instead.")
                    .padding()
                Text("Example: n = 3")
                Text(exampleResult)
                Divider()
                TextField("Height", text: $height)
                    .padding()
                Button("Run"){
                    result = triangleOfOnes(with: height)
                }
                
                Text(result)
            }
        }
    }
    
    // TODO: Complete the function so that it returns the correct triangle of ones based on the provided height
    func triangleOfOnes(with height: String) -> String {
        return ""
    }    
}

struct PyramidOfOnesInstructions_Previews: PreviewProvider {
    static var previews: some View {
        DynamicTriangleView()
    }
}

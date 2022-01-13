//
//  PyramidOfOnes.swift
//  KataClub
//
//  Created by Tyler Lawrence on 1/13/22.
//

import SwiftUI

struct PyramidOfOnesInstructions: View {
    
    var exampleResult: String = """
    1
    11
    111
    11
    1
    """
            
    @State private var pyramidHeight: String = ""
    @State private var result: String = ""
    
    var body: some View {
        VStack{
            Text("Dynamic Triangle")
                .font(.largeTitle)
                .padding()
            
            Text("make a function that creates a triangle of '1's. The first row should have one '1' the second has two '1's until the given number (n). After printing n 1's start to go down until you get to one '1'. This should be one string...not a VStack")
                .padding()
            Text("Example: n = 3")
            Text(exampleResult)
            Divider()
            TextField("n", text: $pyramidHeight)
                .padding()
            Button("run"){
                result = triangleOfOnes()
            }
            Text(result)
            
        }
    }
    
    // UDATE THE triangleOfOnes FUNCTION
    func triangleOfOnes() -> String {
        
        return ""
    }
    
}

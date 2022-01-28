//
//  ArithmeticProgressionView.swift
//  KataClub
//
//  Created by Tom Phillips on 1/27/22.
//

import SwiftUI

struct ArithmeticProgressionView: View {
    @State private var inputArrayText = ""
    @State private var output = ""
    
    @State var inputArray = [Int]()
    
    var body: some View {
        ScrollView {
            VStack{
                Text("Find the Missing Element of an Arithmetic Progression")
                    .font(.largeTitle)
                    .padding()
                
                Text("""
                An Arithmetic Progression is defined as one in which there is a constant difference between the consecutive terms of a given series of numbers. For example, in the sequence [1, 2, 3, 4] the arithmetic progression is 1 and in [1,3,5,7], the arithmetic progression is 2.
                
                You are provided with consecutive elements of an Arithmetic Progression. There is however one hitch: exactly one term from the original series is missing from the set of numbers which have been given to you. The rest of the given series is the same as the original Arithmetic Progression. Find the missing term. If the sequence has no missing term, return 'nil' instead.
                
                You have to write a function that receives an array of Integers. The array size will always be at least 3 numbers. The missing term will never be the first or last one.
                
                When you press 'Generate Random Array' a randomly generated valid array will be created. When you have finished the function and press 'Run', the missing element of the generated input array should be displayed in the UI.
                
                Example: If the input array is [1, 3, 5, 9, 11], then the missing element is 7
                
                PS: This is a sample question of the facebook engineer challenge on interviewstreet. I found it quite fun to solve on paper using math. Have fun!
                """)
                    .padding()
                Divider()
                Text("Input Array: \(inputArrayText)")
                Button("Generate Random Array") {
                    inputArray = generateRandomInputArray()
                    
                    inputArrayText = "[" + inputArray.map { String($0) }.joined(separator: ", ") + "]"
                }
                .padding()
                
                Text("Missing Element: \(output)")
                Button("Run") {
                    if let missingElement = findMissingElement(in: inputArray) {
                        output = String(missingElement)
                    } else {
                        output = "Error"
                    }
                }
                .padding()
                .disabled(inputArrayText.isEmpty)
            }
        }
    }
    
    // TODO: Fill in the function so that it finds the missing element of the Arithmetic Progression
    func findMissingElement(in array: [Int]) -> Int? {
        return nil
    }
    
    func generateRandomInputArray() -> [Int] {
        let minimumCount = 4
        let maxCount = 9
        let count = Int.random(in: minimumCount...maxCount)
        let arithmeticProgression = Int.random(in: 1...maxCount)
        let startingNumber = Int.random(in: -100...100)
        var inputArray = [startingNumber]
        var currentNumber = startingNumber
        
        for _ in 1...count {
            currentNumber += arithmeticProgression
            inputArray.append(currentNumber)
        }
        
        let indexToRemove = Int.random(in: 1..<count - 1)
        inputArray.remove(at: indexToRemove)
        return inputArray
        //return "[" + inputArray.joined(separator: ", ") + "]"
    }
}

struct ArithmeticProgressionView_Previews: PreviewProvider {
    static var previews: some View {
        ArithmeticProgressionView()
    }
}

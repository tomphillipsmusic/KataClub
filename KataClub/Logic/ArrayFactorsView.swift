//
//  ArrayFactorsView.swift
//  KataClub
//
//  Created by Zoe Cutler on 2/18/22.
//

import SwiftUI

struct ArrayFactorsView: View {
    let instructions: String = """
    You're given a positive integer. Return an array of all of its factors.

    Example:
        Input: 18
        Return: [1, 2, 3, 6, 9, 18]
    
    """
    
    @State private var givenNumber: Int = 0
    @State private var arrayOfFactors: String = ""
    
    var body: some View {
        VStack{
            Text("Extra Characters")
                .font(.largeTitle)
            Text(instructions)
                .padding([.leading, .trailing])
            Divider()
            
            Button("generate random numbers"){
                givenNumber = Int.random(in: 1..<1000)
            }
            Divider()
            
            if givenNumber != 0 {
                Text("\(givenNumber)")
                Divider()
                Button("factorize"){
                    arrayOfFactors = getFactorArray(givenNumber: givenNumber).description
                }
                Divider()
                Text("\(arrayOfFactors)")
            }
            
        }
    }
    
    // TODO: Fill in the function to return an array of integer factors.
    func getFactorArray(givenNumber: Int) -> [Int] {
            return []
    }
}

struct ArrayFactorsView_Previews: PreviewProvider {
    static var previews: some View {
        ArrayFactorsView()
    }
}

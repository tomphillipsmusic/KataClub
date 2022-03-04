//
//  ArrayFactorsViewTest.swift
//  KataClubTests
//
//  Created by Zoe Cutler on 2/18/22.
//

import XCTest
@testable import KataClub

class ArrayFactorsViewTest: XCTestCase {
    
    var systemUnderTest: ArrayFactorsView!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        systemUnderTest = ArrayFactorsView()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        systemUnderTest = nil
    }

    func testOneReturnsOne() throws {
        // Given
        let givenNumber = 1
        
        // When
        let actualResult = systemUnderTest.getFactorArray(givenNumber: givenNumber)
        
        // Then
        let expectedResult = [1]
        XCTAssert(expectedResult == actualResult, "One factors into one.")
    }
    
    func testNotPrime() throws {
        // Given
        let givenNumber = 105
        
        // When
        let actualResult = systemUnderTest.getFactorArray(givenNumber: givenNumber)
        
        // Then
        let expectedResult = [1, 3, 5, 7, 15, 21, 35, 105]
        XCTAssert(expectedResult == actualResult, "One factors into one.")
    }
    
    func testPrime() throws {
        // Given
        let givenNumber = 107
        
        // When
        let actualResult = systemUnderTest.getFactorArray(givenNumber: givenNumber)
        
        // Then
        let expectedResult = [1, 107]
        XCTAssert(expectedResult == actualResult, "One factors into one.")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

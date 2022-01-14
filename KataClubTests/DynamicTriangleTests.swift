//
//  DynamicTriangleTests.swift
//  KataClubTests
//
//  Created by Tom Phillips on 1/14/22.
//

import XCTest
@testable import KataClub

class DynamicTriangleTests: XCTestCase {

    var systemUnderTest: DynamicTriangleView!
    
    override func setUpWithError() throws {
        systemUnderTest = DynamicTriangleView()
    }

    override func tearDownWithError() throws {
        systemUnderTest = nil
    }

    func testEnteringOneReturnsOne() throws {
        // Given
        let inputHeight = "1"
        
        // When
        let actualResult = systemUnderTest.triangleOfOnes(with: inputHeight)
        
        // Then
        let expectedResult = "1"
        XCTAssert(expectedResult == actualResult, "Entering a height of 1 creates expected pyramid.")
    }
    
    func testEnteringThreeReturnsSamePyramidAsExample() throws {
        // Given
        let inputHeight = "3"
        
        // When
        let actualResult = systemUnderTest.triangleOfOnes(with: inputHeight)
        
        // Then
        XCTAssert(actualResult == systemUnderTest.exampleResult, "Entering a height of 3 creates expected pyramid.")
    }
    
    func testEnteringFiveReturnsExpectedResult() throws {
        // Given
        let inputHeight = "5"
        
        // When
        let actualResult = systemUnderTest.triangleOfOnes(with: inputHeight)
        
        // Then
        let expectedResult = """
        1
        11
        111
        1111
        11111
        1111
        111
        11
        1
        """
        
        print(expectedResult)
        print(actualResult)
        XCTAssert(actualResult == expectedResult, "Entering a height of 5 creates expected pyramid.")
    }
    
    func testEnteringZeroReturnsInvalidResult() {
        // Given
        let inputHeight = "0"
        
        // When
        let actualResult = systemUnderTest.triangleOfOnes(with: inputHeight)
        
        // Then
        XCTAssert(actualResult == systemUnderTest.invalidInputText, "Entering a height of 0 returns invalid input text")
    }
    
    func testEnteringNegativeOneReturnsInvalidResult() {
        // Given
        let inputHeight = "-1"
        
        // When
        let actualResult = systemUnderTest.triangleOfOnes(with: inputHeight)
        
        // Then
        XCTAssert(actualResult == systemUnderTest.invalidInputText, "Entering a height of -1 returns invalid input text")
    }
    
    func testEnteringTextReturnsInvalidResult() {
        // Given
        let inputHeight = "aBc!3492348"
        
        // When
        let actualResult = systemUnderTest.triangleOfOnes(with: inputHeight)
        
        // Then
        XCTAssert(actualResult == systemUnderTest.invalidInputText, "Entering text returns invalid input text")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

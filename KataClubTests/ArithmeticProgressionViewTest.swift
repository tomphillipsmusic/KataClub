//
//  ArithmeticProgressionViewTest.swift
//  KataClubTests
//
//  Created by Tyler Lawrence on 1/27/22.
//

import XCTest
@testable import KataClub

class ArithmeticProgressionViewTest: XCTestCase {
    
    var systemUnderTest: ArithmeticProgressionView!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        systemUnderTest = ArithmeticProgressionView()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        systemUnderTest = nil
    }

    func test3ElementsPositive() throws {
        // Given
        let inputArray: [Int] = [1, 3, 7]
        
        // When
        let actualResult: Int? = systemUnderTest.findMissingElement(in: inputArray)
        
        // Then
        let expectedResult: Int = 5
        
        XCTAssert(expectedResult == actualResult, "[1, 3, 7] returns 5")
    }
    
    func test3ElementsNegative() throws {
        // Given
        let inputArray: [Int] = [-7, -3, -1]
        
        // When
        let actualResult = systemUnderTest.findMissingElement(in: inputArray)
        
        // Then
        let expectedResult: Int? = -5
        
        XCTAssert(expectedResult == actualResult, "[-7, -3, -1] returns -5")
    }

    func testArray4ElementsNegativeStep5() throws {
        // Given
        let inputArray: [Int] = [-50, -45, -40, -30]
        
        // When
        let actualResult: Int? = systemUnderTest.findMissingElement(in: inputArray)
        
        // Then
        let expectedResult: Int = -35
        
        XCTAssert(expectedResult == actualResult, "[-50, -45, -40, -30] returns -35")
    }
    

    func testMissingNumber0() throws {
        // Given
        let inputArray: [Int] = [-4, -2, 2, 4]
        
        // When
        let actualResult: Int? = systemUnderTest.findMissingElement(in: inputArray)
        
        // Then
        let expectedResult: Int = 0
        
        XCTAssert(expectedResult == actualResult, "[-4, -2, 2, 4] returns 0")
    }
    
    func testNoMissingNumber() throws {
        // Given
        let inputArray: [Int] = [2,4,6,8,10]
        
        // When
        let actualResult: Int? = systemUnderTest.findMissingElement(in: inputArray)
        
        // Then
        let expectedResult: Int? = nil
        print("actualResult")
        print("expectedResult")
        XCTAssert(expectedResult == actualResult, "an array with no missing values returns nil")
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

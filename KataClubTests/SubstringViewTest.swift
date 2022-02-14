//
//  SubstringViewTest.swift
//  KataClubTests
//
//  Created by Tyler Lawrence on 2/3/22.
//

import XCTest
@testable import KataClub
class SubstringViewTest: XCTestCase {
    
    var systemUnderTest: SubstringView!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        systemUnderTest = SubstringView()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        systemUnderTest = nil
    }

    func testThreeOccurrences() throws {
        //Given
        let inputString: String = "abcabcabc"
        let inputSubstring: String = "abc"
        
        // When
        let actualResult: Int = systemUnderTest.calculateOccurrences(inputString:inputString, inputSubstring:inputSubstring)
        
        // Then
        let expectedResult: Int = 3
        
        XCTAssert(expectedResult == actualResult, "substring occurs 3 times")
    }
    
    func testNoOccurrences() throws {
        // Given
        let inputString: String = "riq's treats make me freak"
        let inputSubstring: String = "banana"
        
        // When
        let actualResult: Int = systemUnderTest.calculateOccurrences(inputString:inputString, inputSubstring:inputSubstring)
        
        //Then
        let expectedResult: Int = 0
        
        XCTAssert(expectedResult == actualResult, "substring is not in the string")
    }
    
    func testOneLetterSubstring() throws {
        // Given
        let inputString: String = "a banana"
        let inputSubstring: String = "a"
        
        // When
        let actualResult: Int = systemUnderTest.calculateOccurrences(inputString:inputString, inputSubstring:inputSubstring)
        
        // Then
        let expectedResult: Int = 4
        
        XCTAssert(expectedResult == actualResult, "single letter occurs 4 times in a substring")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

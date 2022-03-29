//
//  ValidParenthesesTest.swift
//  KataClubTests
//
//  Created by Zoe Cutler on 3/29/22.
//

import XCTest
@testable import KataClub
class ValidParenthesesTest: XCTestCase {
    
    var systemUnderTest: ValidParenthesesView!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        systemUnderTest = ValidParenthesesView()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        systemUnderTest = nil
    }
    
    func testEmptyString() throws {
        //Given
        let inputString: String = ""
        
        //When
        let actualResult: Bool = systemUnderTest.checkValidityOfParentheses(input: inputString)
        
        //Then
        let expectedResult = true
        
        XCTAssert(expectedResult == actualResult, "Blank string should return true.")
    }
    
    func testParens() throws {
        //Given
        let inputString: String = "()"
        
        //When
        let actualResult: Bool = systemUnderTest.checkValidityOfParentheses(input: inputString)
        
        //Then
        let expectedResult = true
        
        XCTAssert(expectedResult == actualResult, "() should return true.")
    }
    
    func testCurly() throws {
        //Given
        let inputString: String = "{}"
        
        //When
        let actualResult: Bool = systemUnderTest.checkValidityOfParentheses(input: inputString)
        
        //Then
        let expectedResult = true
        
        XCTAssert(expectedResult == actualResult, "{} should return true.")
    }
    
    func testMismatchedPair() throws {
        //Given
        let inputString: String = "{)"
        
        //When
        let actualResult: Bool = systemUnderTest.checkValidityOfParentheses(input: inputString)
        
        //Then
        let expectedResult = false
        
        XCTAssert(expectedResult == actualResult, "{) should return false.")
    }
    
    func testTwoPairs() throws {
        //Given
        let inputString: String = "{}[]"
        
        //When
        let actualResult: Bool = systemUnderTest.checkValidityOfParentheses(input: inputString)
        
        //Then
        let expectedResult = true
        
        XCTAssert(expectedResult == actualResult, "{}[] should return true.")
    }
    
    func testLongCorrect() throws {
        //Given
        let inputString: String = "{((())[])}"
        
        //When
        let actualResult: Bool = systemUnderTest.checkValidityOfParentheses(input: inputString)
        
        //Then
        let expectedResult = true
        
        XCTAssert(expectedResult == actualResult, "{((())[])} should return true.")
    }
    
    func testLongWrong() throws {
        //Given
        let inputString: String = "{((()[])}"
        
        //When
        let actualResult: Bool = systemUnderTest.checkValidityOfParentheses(input: inputString)
        
        //Then
        let expectedResult = false
        
        XCTAssert(expectedResult == actualResult, "{((()[])} should return false.")
    }



}

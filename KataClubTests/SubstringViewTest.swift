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
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func threeOccurrences() throws {
        //Given
        let inputString: String = "riqriqriq"
        let inputSubstring: String = "riq"
        
        // When
        //let actualResult: Int: = systemUnderTest.calculateOccurrences
        
        // Then
        let expectedResult: Int = 3
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

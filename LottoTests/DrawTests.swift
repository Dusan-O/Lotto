//
//  DrawTests.swift
//  LottoTests
//
//  Created by Dusan Orescanin on 10/08/2022.
//

import XCTest
@testable import Lotto

class DrawTests: XCTestCase {
    
    let draw = Draw(count: 10, range: 1...15)

    func testResultCount() {
        XCTAssert(draw?.count == draw?.result.count)
    }
    
    func testBadArguments() {
        XCTAssertNil(Draw(count: 15, range: 1...10))
    }
    
    func testGoodArguments() {
        XCTAssertNotNil(draw)
    }
}

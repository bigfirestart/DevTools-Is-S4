//
//  lab1_tests.swift
//  lab1-tests
//
//  Created by Кирилл Лукьянов on 15.03.2021.
//

import XCTest
import Foundation
@testable import Devtools_xcode_lab1

class lab1TestsSum: XCTestCase {
    func test() {
        XCTAssertEqual(calc(a: 1, b:2, symb: "+"), Float(3))
        XCTAssertEqual(calc(a: -1, b:2, symb: "+"), 1)
        XCTAssertEqual(calc(a: -10, b:-202, symb: "+"), -212)
    }
}

class lab1TestsDec: XCTestCase{
    func test(){
        XCTAssertEqual(calc(a: 2, b:2, symb: "-"), 0)
        XCTAssertEqual(calc(a: 11, b:1, symb: "-"), 10)
        XCTAssertEqual(calc(a: -10, b:-202, symb: "-"), 192)
    }
}

class lab1TestsMult: XCTestCase{
    func test(){
        XCTAssertEqual(calc(a: 1, b:2, symb: "*"), 2)
        XCTAssertEqual(calc(a: -1, b:2, symb: "*"), -2)
        XCTAssertEqual(calc(a: -10, b:-202, symb: "*"), 2020)
    }
}

class lab1TestsDiv: XCTestCase{
    func test(){
        XCTAssertEqual(calc(a: 1, b:2, symb: "/"), Float(1/2))
        XCTAssertEqual(calc(a: 10, b:2, symb: "/"), 5)
        XCTAssertEqual(calc(a: -10, b:10, symb: "/"), -1)
    }
}

class lab1TestsExp: XCTestCase{
    func test(){
        XCTAssertEqual(calc(a: 1, b:2, symb: "^"), 1)
        XCTAssertEqual(calc(a: 10, b:2, symb: "^"), 100)
        XCTAssertEqual(calc(a: -1, b:10, symb: "^"), 1)
    }
}

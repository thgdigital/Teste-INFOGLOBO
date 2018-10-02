//
//  TestInfoTests.swift
//  TestInfoTests
//
//  Created by Thiago Santos on 02/10/2018.
//  Copyright © 2018 Thiago Santos. All rights reserved.
//

import XCTest
@testable import TestInfo

class TestInfoTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testEmptyItems() {
        let home =  Homewireframe().make()?.topViewController as! HomeViewController
        XCTAssertTrue(home.items.count == 0 , "Error não esta vazio")
    }
    
    func testPresenterIsNull(){
        let home =  Homewireframe().make()?.topViewController as! HomeViewController
        XCTAssertTrue(home.presenter != nil , "Error seu presenter esta nulo")
    }
    
    func testCheckApi(){
        let data = loadJson(filename: "capa")
        XCTAssertTrue(data != nil, "Error não esta vazio")
        XCTAssertTrue(data?.count == 14, "Error api não contem esse numero exatos")
    }

    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

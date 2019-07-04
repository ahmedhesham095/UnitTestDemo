//
//  UnitTestDemoTestCases.swift
//  UnitTestDemoTestCases
//
//  Created by Vodafone on 7/3/19.
//  Copyright © 2019 Vodafone. All rights reserved.
//

import XCTest
@testable import UnitTestDemo

class UnitTestDemoTestCases: XCTestCase {
    
    var presenter : HomePresenter?
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        presenter = HomePresenter()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testLoadingPost() {
        let postExpectation = expectation(description: "loadPosts")
        
        presenter?.loadPosts { (message, post) in
            // compare the message returned from the server
            XCTAssertEqual(message, "success")
            // another way
            // if message != "success" {
            // XCTFail("ERROR Fetching Data")
            //}
            postExpectation.fulfill()
        }
        waitForExpectations(timeout: 30, handler: nil)
    }
    
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

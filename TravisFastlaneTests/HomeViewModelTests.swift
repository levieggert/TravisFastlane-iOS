//
//  HomeViewModelTests.swift
//  TravisFastlaneTests
//
//  Created by Levi Eggert on 1/16/20.
//  Copyright © 2020 Levi Eggert. All rights reserved.
//

import XCTest
@testable import TravisFastlane

class HomeViewModelTests: XCTestCase {
    
    var viewModel: HomeViewModel!
    
    override func setUp() {
      super.setUp()
      viewModel = HomeViewModel()
    }

    override func tearDown() {
      viewModel = nil
      super.tearDown()
    }
    
    func testTitleIsNotEmpty() {
        XCTAssertTrue(!viewModel.title.isEmpty, "Title should not be empty.")
    }
    
    func testTitleEqualsTravisPlusFastlane() {
        let expectedTitle = "Travis+Fastlane"
        XCTAssertTrue(viewModel.title == expectedTitle, "Title should equal \(expectedTitle)")
    }
}

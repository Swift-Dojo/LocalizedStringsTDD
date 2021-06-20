//
//  LocalizationWithTDDTests.swift
//  LocalizationWithTDDTests
//
//  Created by Oliver Jordy Pérez Escamilla on 19/06/21.
//

import XCTest
@testable import LocalizationWithTDD

class LocalizationWithTDDTests: XCTestCase {

  func test_view_hasCorrectTitle() throws {
    let storyboard = UIStoryboard.init(name: "Main", bundle: .init(for: ViewController.self))
    let sut = storyboard.instantiateViewController(identifier: "ViewController")
    
    sut.loadViewIfNeeded()
    
    XCTAssertEqual(sut.title, localized("MAIN_TITLE"))
  }
    
  // MARK: - Helpers
  func localized(_ key: String, line: UInt = #line) -> String {
    let bundle = Bundle(for: ViewController.self)
    let value = bundle.localizedString(forKey: key, value: nil, table: nil)
    if value == key {
      XCTFail("Missing localized string for key: \(key)", line: line)
    }
    return value
  }

}

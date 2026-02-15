//
//  HomeViewModelTests.swift
//  AppleMusicCloneTests
//
//  Created by Artem Golovchenko on 15.02.2026.
//

import XCTest
@testable import AppleMusicClone

@MainActor
final class HomeViewModelTests: XCTestCase {
    
    var viewModel: HomeViewModel? = nil
    
    override func setUp() async throws {
        viewModel = HomeViewModel()
    }
    
    func testCalculatePlusHomeViewModel() throws {
        let num1: Double = 1.0
        let num2: Double = 2.0
        
        guard let result = viewModel?.calculator(num1: num1, num2: num2, operation: .plus) else {
            XCTFail()
            return
        }
        XCTAssertEqual(result, 3.0)
    }
    
    func testCalculateMinusHomeViewModel() throws {
        let num1: Double = 12.0
        let num2: Double = 2.0
        
        guard let result = viewModel?.calculator(num1: num1, num2: num2, operation: .minus) else {
            XCTFail()
            return
        }
        XCTAssertEqual(result, 10.0)
    }
    
    func testCalculateDivideHomeViewModel() throws {
        let num1: Double = 9.0
        let num2: Double = 3.0
        
        guard let result = viewModel?.calculator(num1: num1, num2: num2, operation: .divide) else {
            XCTFail()
            return
        }
        XCTAssertEqual(result, 3.0)
    }
    
    func testCalculateMultiplyHomeViewModel() throws {
        let num1: Double = 10.0
        let num2: Double = 20.0
        
        guard let result = viewModel?.calculator(num1: num1, num2: num2, operation: .multiply) else {
            XCTFail()
            return
        }
        XCTAssertEqual(result, 200.0)
    }
    
}

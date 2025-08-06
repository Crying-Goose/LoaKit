//
//  LoaKitTests.swift
//  LoaKit
//
//  Created by 라주영 on 7/24/25.
//

import XCTest
@testable import LoaKit

final class LoaKitTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testSiblings() async throws {
        // ✅ 준비
        let repository = LoaRepository()
        let name = "asdddddasds"

        // ✅ 실행
        let result = try await repository.fetchSiblings(name: name)
        
        // ✅ 출력
        print(result)
        
        // ✅ 검증
        XCTAssertNoThrow(result)
    }
    
    func testGetProfile() async throws {
        // ✅ 준비
        let repository = LoaRepository()
        let name = "햄머박홍규응가"

        // ✅ 실행
        let result = try await repository.fetchProfile(name: name)
        
        // ✅ 출력
        print(result)
        
        // ✅ 검증
        XCTAssertNoThrow(result)
    }
    
    func testGetEqipment() async throws {
        // ✅ 준비
        let repository = LoaRepository()
        let name = "햄머박홍규"

        // ✅ 실행
        let result = try await repository.fetchEquipment(name: name)
        
        // ✅ 출력
        print(result)
        
        // ✅ 검증
        XCTAssertNoThrow(result)
    }
    
    func testGetAvatars() async throws {
        // ✅ 준비
        let repository = LoaRepository()
        let name = "햄머박홍규"

        // ✅ 실행
        let result = try await repository.fetchAvatars(name: name)
        
        // ✅ 출력
        print(result)
        
        // ✅ 검증
        XCTAssertNoThrow(result)
    }
    
    func testGetCombatSkills() async throws {
        // ✅ 준비
        let repository = LoaRepository()
        let name = "햄머박홍규"

        // ✅ 실행
        let result = try await repository.fetchCombatSkills(name: name)
        
        // ✅ 출력
        print(result)
        
        // ✅ 검증
        XCTAssertNoThrow(result)
    }
}

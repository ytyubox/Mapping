import XCTest
@testable import Mapping

final class MappingTests: XCTestCase {
    func testMapping() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let value = Mapping<Int>(0)
        let result = value.map(String.init)
        
        XCTAssertEqual(result.value, "0")
    }

    static var allTests = [
        ("testMapping", testMapping),
    ]
}

import XCTest
@testable import Mapping

final class MappingTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Mapping().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

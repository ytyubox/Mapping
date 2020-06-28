import XCTest
@testable import Mapping

final class MappingTests: XCTestCase {
    func testMapping() {
        let value = Mapping<Int>(0)
        let result = value.map(String.init)
        
        XCTAssertEqual(result.value, "0")
    }
  

    static var allTests = [
        ("testMapping", testMapping),
    ]
}

import XCTest
import Mapping

class MapableTests: XCTestCase {
    @Mappable var source = 0
    func testMapable() {
        let result = $source.map(String.init)
        XCTAssertEqual(result.value, String(source))
    }
    static var allTests = [
        ("testMapable",testMapable)
    ]
}

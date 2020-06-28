import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(MappingTests.allTests),
        testCase(MapableTests.allTests),
    ]
}
#endif

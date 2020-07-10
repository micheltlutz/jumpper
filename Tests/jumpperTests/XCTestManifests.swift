import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BlockquoteTests.allTests),
        testCase(LinkTests.allTests),
        testCase(DivTests.allTests),
    ]
}
#endif

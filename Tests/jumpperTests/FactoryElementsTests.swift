import XCTest
@testable import jumpper

final class FactoryElementsTests: XCTestCase {
    func testElement() {
        let element = FactoryElements.textWith("Hello, World!")

        XCTAssertEqual(element.getString(), "Hello, World!")
    }

    static var allTests = [
        ("testElement", testElement),
    ]
}

import XCTest
@testable import jumpper

final class TextTests: XCTestCase {
    func testElement() {
        let element = Text("Hello, World!")

        XCTAssertEqual(element.getString(), "Hello, World!")
    }

    static var allTests = [
        ("testElement", testElement)
    ]
}

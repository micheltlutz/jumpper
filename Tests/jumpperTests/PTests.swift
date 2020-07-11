import XCTest
@testable import jumpper

final class PTests: XCTestCase {
    func testElement() {
        let element = P("Hello, World!")

        XCTAssertEqual(element.getString(), "<p>Hello, World!</p>")
    }

    func testElementAttr() {
        let element = P("Hello, World!")
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<p class='sameClass'>Hello, World!</p>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

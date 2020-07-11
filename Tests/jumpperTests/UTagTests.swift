import XCTest
@testable import jumpper

final class UTagTests: XCTestCase {
    func testElement() {
        let element = U("Hello, World!")

        XCTAssertEqual(element.getString(), "<u>Hello, World!</u>")
    }

    func testElementAttr() {
        let element = U("Hello, World!")
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<u class='sameClass'>Hello, World!</u>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

import XCTest
@testable import jumpper

final class SmallTests: XCTestCase {
    func testElement() {
        let element = Small("Hello, World!")

        XCTAssertEqual(element.getString(), "<small>Hello, World!</small>")
    }

    func testElementAttr() {
        let element = Small("Hello, World!")
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<small class='sameClass'>Hello, World!</small>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

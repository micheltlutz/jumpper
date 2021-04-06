import XCTest
@testable import jumpper

final class HeaderTests: XCTestCase {
    func testElement() {
        let element = Header()

        XCTAssertEqual(element.getString(), "<header></header>")
    }

    func testElementAttr() {
        let element = Header(("class", "sameClass"))
        element.addAttribute(("id", "header"))

        XCTAssertEqual(element.getString(), "<header class='sameClass' id='header'></header>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

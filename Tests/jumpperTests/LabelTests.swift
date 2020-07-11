import XCTest
@testable import jumpper

final class LabelTests: XCTestCase {
    func testElement() {
        let element = Label("Comment")

        XCTAssertEqual(element.getString(), "<label>Comment</label>")
    }

    func testElementAttr() {
        let element = Label("Comment")
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<label class='sameClass'>Comment</label>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

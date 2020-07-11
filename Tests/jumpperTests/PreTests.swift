import XCTest
@testable import jumpper

final class PreTests: XCTestCase {
    func testElement() {
        let element = Pre("Text")

        XCTAssertEqual(element.getString(), "<pre>Text</pre>")
    }

    func testElementAttr() {
        let element = Pre("Text")
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<pre class='sameClass'>Text</pre>")
    }

    func testElementWithElement() {
        let element = Pre("Text")
        element.add("Text")
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<pre class='sameClass'>TextText</pre>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr),
        ("testElementWithElement", testElementWithElement)
    ]
}

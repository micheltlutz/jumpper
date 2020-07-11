import XCTest
@testable import jumpper

final class DivTests: XCTestCase {
    func testElement() {
        let element = Div()
        element.add("Hello, World!")

        XCTAssertEqual(element.getString(), "<div>Hello, World!</div>")
    }

    func testElementAttr() {
        let element = Div(("class", "sameClass"))
        element.add("Hello, World!")

        XCTAssertEqual(element.getString(), "<div class='sameClass'>Hello, World!</div>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

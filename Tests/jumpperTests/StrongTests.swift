import XCTest
@testable import jumpper

final class StrongTests: XCTestCase {
    func testElement() {
        let element = Strong("Hello, World!")

        XCTAssertEqual(element.getString(), "<strong>Hello, World!</strong>")
    }

    func testElementAttr() {
        let element = Strong("Hello, World!")
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<strong class='sameClass'>Hello, World!</strong>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

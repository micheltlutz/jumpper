import XCTest
@testable import jumpper

final class EmTests: XCTestCase {
    func testElement() {
        let em = Em("Hello, World!")

        XCTAssertEqual(em.getString(), "<em>Hello, World!</em>")
    }

    func testElementAttr() {
        let em = Em("Hello, World!")
        em.addAttribute(("class", "sameClass"))

        XCTAssertEqual(em.getString(), "<em class='sameClass'>Hello, World!</em>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

import XCTest
@testable import jumpper

final class LinkTests: XCTestCase {
    func testElement() {
        let link = A(("href", "#"))
        link.add("My Link")

        XCTAssertEqual(link.getString(), "<a href='#'>My Link</a>")
    }

    func testElementAttr() {
        let link = A(("href", "#"), ("class", "class-link"))
        link.add("My Link")

        XCTAssertEqual(link.getString(), "<a href='#' class='class-link'>My Link</a>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

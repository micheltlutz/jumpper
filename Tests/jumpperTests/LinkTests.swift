import XCTest
@testable import jumpper

final class LinkTests: XCTestCase {
    func testLink() {
        let link = Link(("href", ""))
        link.add("My Link")

        XCTAssertEqual(link.getString(), "<a href=''>My Link</a>")
    }

    func testLinkClass() {
        let link = Link(("href", ""), ("class", "class-link"))
        link.add("My Link")

        XCTAssertEqual(link.getString(), "<a href='' class='class-link'>My Link</a>")
    }

    static var allTests = [
        ("testLink", testLink),
        ("testLinkClass", testLinkClass),
    ]
}

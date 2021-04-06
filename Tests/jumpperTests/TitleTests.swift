import XCTest
@testable import jumpper

final class TitleTests: XCTestCase {
    func testElement() {
        let element = Title("My Site")

        XCTAssertEqual(element.getString(), "<title>My Site</title>")
    }

    func testElementAttr() {
        let element = Title("My Site")
        element.addAttribute(("id", "title"))

        XCTAssertEqual(element.getString(), "<title id='title'>My Site</title>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

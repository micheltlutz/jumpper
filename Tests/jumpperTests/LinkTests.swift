import XCTest
@testable import jumpper

final class LinkTests: XCTestCase {
    func testElement() {
        let element = Link("/styles/milligram.min.css")

        XCTAssertEqual(element.getString(), "<link href='/styles/milligram.min.css'>")
    }

    func testElementAttr() {
        let element = Link("/styles/milligram.min.css", attributes: ("rel", "stylesheet"))
        element.addAttribute(("media", "all"))

        XCTAssertEqual(element.getString(), "<link rel='stylesheet' href='/styles/milligram.min.css' media='all'>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

import XCTest
@testable import jumpper

final class HeadTests: XCTestCase {
    func testElement() {
        let element = Head()

        XCTAssertEqual(element.getString(), "<head></head>")
    }

    func testElementAttr() {
        let element = Head(("class", "sameClass"))
        element.addAttribute(("id", "head"))
        element.add(Title("My Site"))


        XCTAssertEqual(element.getString(), "<head class='sameClass' id='head'><title>My Site</title></head>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

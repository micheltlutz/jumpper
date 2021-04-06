import XCTest
@testable import jumpper

final class BodyTests: XCTestCase {
    func testElement() {
        let element = Body()
        element.add("Hello, World!")

        XCTAssertEqual(element.getString(), "<body>Hello, World!</body>")
    }

    func testElementAttr() {
        let element = Body(("class", "sameClass"))
        element.add("Hello, World!")
        element.addAttribute(("id", "main"))

        XCTAssertEqual(element.getString(), "<body class='sameClass' id='main'>Hello, World!</body>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

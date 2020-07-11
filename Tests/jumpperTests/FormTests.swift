import XCTest
@testable import jumpper

final class FormTests: XCTestCase {
    func testElement() {
        let element = Form()
        element.add(H3("Hello, World!"))

        XCTAssertEqual(element.getString(), "<form><h3>Hello, World!</h3></form>")
    }

    func testElementAttr() {
        let element = Form(("class", "sameClass"))
        element.add(H3("Hello, World!"))

        XCTAssertEqual(element.getString(), "<form class='sameClass'><h3>Hello, World!</h3></form>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

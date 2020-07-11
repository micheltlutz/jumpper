import XCTest
@testable import jumpper

final class MainTests: XCTestCase {
    func testElement() {
        let element = Main()

        XCTAssertEqual(element.getString(), "<main></main>")
    }

    func testElementAttr() {
        let element = Main(("class", "sameClass"))
        XCTAssertEqual(element.getString(), "<main class='sameClass'></main>")
    }

    func testElementWithElement() {
        let element = Main()
        element.add(Div())
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<main class='sameClass'><div></div></main>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr),
        ("testElementWithElement", testElementWithElement)
    ]
}

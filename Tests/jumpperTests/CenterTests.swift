import XCTest
@testable import jumpper

final class CenterTests: XCTestCase {
    func testElement() {
        let center = Center()
        center.add("Hello, World!")

        XCTAssertEqual(center.getString(), "<center>Hello, World!</center>")
    }

    func testElementAttr() {
        let center = Center(("class", "sameClass"))
        center.add("Hello, World!")

        XCTAssertEqual(center.getString(), "<center class='sameClass'>Hello, World!</center>")
    }

    func testElementWithElement() {
        let center = Center(("class", "sameClass"))
        center.add(H1("Hello, World!"))

        XCTAssertEqual(center.getString(), "<center class='sameClass'><h1>Hello, World!</h1></center>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr),
        ("testElementWithElement", testElementWithElement)
    ]
}

import XCTest
@testable import jumpper

final class FieldsetTests: XCTestCase {
    func testElement() {
        let element = Fieldset()
        element.add(H3("Hello, World!"))

        XCTAssertEqual(element.getString(), "<fieldset><h3>Hello, World!</h3></fieldset>")
    }

    func testElementAttr() {
        let element = Fieldset(("class", "sameClass"))
        element.add(H3("Hello, World!"))

        XCTAssertEqual(element.getString(), "<fieldset class='sameClass'><h3>Hello, World!</h3></fieldset>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

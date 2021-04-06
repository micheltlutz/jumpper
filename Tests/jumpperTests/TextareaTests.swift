import XCTest
@testable import jumpper

final class TextareaTests: XCTestCase {
    func testElement() {
        let element = Textarea()
        element.add("Hello, World!")

        XCTAssertEqual(element.getString(), "<textarea>Hello, World!</textarea>")
    }

    func testElementAttr() {
        let element = Textarea(("class", "sameClass"))
        element.add("Hello, World!")
        element.addAttribute(("id", "textarea1"))

        XCTAssertEqual(element.getString(), "<textarea class='sameClass' id='textarea1'>Hello, World!</textarea>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

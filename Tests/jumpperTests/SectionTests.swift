import XCTest
@testable import jumpper

final class SectionTests: XCTestCase {
    func testElement() {
        let element = Section()
        element.add("Hello, World!")

        XCTAssertEqual(element.getString(), "<section>Hello, World!</section>")
    }

    func testElementAttr() {
        let element = Section(("class", "sameClass"))
        element.add("Hello, World!")

        XCTAssertEqual(element.getString(), "<section class='sameClass'>Hello, World!</section>")
    }

    func testElementWithElement() {
        let code = Section(("id", "sectionId"))
        code.add(Small("Section test"))
        code.addAttribute(("class", "sameClass"))

        XCTAssertEqual(code.getString(), "<section id='sectionId' class='sameClass'><small>Section test</small></section>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr),
        ("testElementWithElement", testElementWithElement)
    ]
}

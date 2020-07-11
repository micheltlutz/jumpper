import XCTest
@testable import jumpper

final class CodeTests: XCTestCase {
    func testElement() {
        let code = Code("let value: Int = 0")

        XCTAssertEqual(code.getString(), "<code>let value: Int = 0</code>")
    }

    func testElementAttr() {
        let code = Code("let value: Int = 0")
        code.addAttribute(("class", "sameClass"))

        XCTAssertEqual(code.getString(), "<code class='sameClass'>let value: Int = 0</code>")
    }

    func testElementWithElement() {
        let code = Code("let value: Int = 0")
        code.add("let value2: Int = 1")
        code.addAttribute(("class", "sameClass"))

        XCTAssertEqual(code.getString(), "<code class='sameClass'>let value: Int = 0let value2: Int = 1</code>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr),
        ("testElementWithElement", testElementWithElement)
    ]
}

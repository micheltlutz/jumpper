import XCTest
@testable import jumpper

final class ScriptTests: XCTestCase {
    func testElement() {
        let element = Script()

        XCTAssertEqual(element.getString(), "<script></script>")
    }

    func testElementAttr() {
        let element = Script(("type", "application/javascript"))

        XCTAssertEqual(element.getString(), "<script type='application/javascript'></script>")
    }

    func testElementAttrs() {
        let element = Script(("type", "application/javascript"))
        element.addAttribute(("data-src", "demo.js"))

        XCTAssertEqual(element.getString(), "<script type='application/javascript' data-src='demo.js'></script>")
    }

    func testElementBody() {
        let element = Script(("type", "application/javascript"))

        element.add("alert('Hi');")

        XCTAssertEqual(element.getString(), "<script type='application/javascript'>alert('Hi');</script>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr),
        ("testElementAttrs", testElementAttrs),
        ("testElementBody", testElementBody)
    ]
}

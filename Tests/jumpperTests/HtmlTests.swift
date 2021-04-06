import XCTest
@testable import jumpper

final class HtmlTests: XCTestCase {
    func testElement() {
        let element = Html()

        XCTAssertEqual(element.getString(), "<html></html>")
    }

    func testElementAttr() {
        let element = Html(("lang", "en"))
        element.addAttribute(("data-color-mode", "dark"))
        element.add(Head())
        element.add(Body())

        XCTAssertEqual(element.getString(), "<html lang='en' data-color-mode='dark'><head></head><body></body></html>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

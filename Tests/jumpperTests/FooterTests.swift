import XCTest
@testable import jumpper

final class FooterTests: XCTestCase {
    func testElement() {
        let element = Footer()

        XCTAssertEqual(element.getString(), "<footer></footer>")
    }

    func testElementAttr() {
        let element = Footer(("class", "sameClass"))
        element.addAttribute(("id", "footer"))

        XCTAssertEqual(element.getString(), "<footer class='sameClass' id='footer'></footer>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

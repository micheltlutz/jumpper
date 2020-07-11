import XCTest
@testable import jumpper

final class HrTests: XCTestCase {
    func testElement() {
        let element = Hr()

        XCTAssertEqual(element.getString(), "<hr>")
    }

    func testElementAttr() {
        let element = Hr()
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<hr class='sameClass'>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

import XCTest
@testable import jumpper

final class MetaTests: XCTestCase {
    func testElement() {
        let element = Meta()

        XCTAssertEqual(element.getString(), "<meta>")
    }

    func testElementAttr() {
        let element = Meta(("charset", "utf-8"))

        XCTAssertEqual(element.getString(), "<meta charset='utf-8'>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

import XCTest
@testable import jumpper

final class BlockquoteTests: XCTestCase {
    func testElement() {
        let blockquote = Blockquote()
        blockquote.add("Hello, World!")

        XCTAssertEqual(blockquote.getString(), "<blockquote>Hello, World!</blockquote>")
    }

    func testElementAttr() {
        let blockquote = Blockquote(("class", "sameClass"))
        blockquote.add("Hello, World!")

        XCTAssertEqual(blockquote.getString(), "<blockquote class='sameClass'>Hello, World!</blockquote>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

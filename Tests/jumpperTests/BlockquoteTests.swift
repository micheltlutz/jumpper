import XCTest
@testable import jumpper

final class BlockquoteTests: XCTestCase {
    func testBlockquote() {
        let blockquote = Blockquote()
        blockquote.add("Hello, World!")

        XCTAssertEqual(blockquote.getString(), "<blockquote>Hello, World!</blockquote>")
    }

    func testBlockquoteAttr() {
        let blockquote = Blockquote(("class", "sameClass"))
        blockquote.add("Hello, World!")

        XCTAssertEqual(blockquote.getString(), "<blockquote class='sameClass'>Hello, World!</blockquote>")
    }

    static var allTests = [
        ("testBlockquote", testBlockquote),
        ("testBlockquoteAttr", testBlockquoteAttr)
    ]
}

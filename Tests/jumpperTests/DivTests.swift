import XCTest
@testable import jumpper

final class DivTests: XCTestCase {
    func testDiv() {
        let div = Div()
        div.add("Hello, World!")

        XCTAssertEqual(div.getString(), "<div>Hello, World!</div>")
    }

    func testDivAttr() {
        let div = Div(("class", "sameClass"))
        div.add("Hello, World!")

        XCTAssertEqual(div.getString(), "<div class='sameClass'>Hello, World!</div>")
    }

    static var allTests = [
        ("testDiv", testDiv),
        ("testDivAttr", testDivAttr)
    ]
}

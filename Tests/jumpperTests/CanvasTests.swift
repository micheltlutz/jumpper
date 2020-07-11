import XCTest
@testable import jumpper

final class CanvasTests: XCTestCase {
    func testElement() {
        let canvas = Canvas()

        XCTAssertEqual(canvas.getString(), "<canvas></canvas>")
    }

    func testElementAttr() {
        let canvas = Canvas(("id", "canvasId"), ("class", "sameClass"))

        XCTAssertEqual(canvas.getString(), "<canvas id='canvasId' class='sameClass'></canvas>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

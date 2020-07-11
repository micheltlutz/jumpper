import XCTest
@testable import jumpper

final class ImgTests: XCTestCase {
    func testElement() {
        let element = Img("/imgs/demo.png")

        XCTAssertEqual(element.getString(), "<img src='/imgs/demo.png'>")
    }

    func testElementAttr() {
        let element = Img("/imgs/demo.png", attributes: ("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<img class='sameClass' src='/imgs/demo.png'>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

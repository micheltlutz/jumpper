import XCTest
@testable import jumpper

final class RadioTests: XCTestCase {
    func testElement() {
        let radio = Radio("option1", id: "option1", name: "option1")

        XCTAssertEqual(radio.getString(), "<input value='option1' type='radio' id='option1' name='option1'>")
    }

    func testElementAttr() {
        let radio = Radio("option1", id: "option1", name: "option1")
        radio.addAttribute(("class", "button button-outline") )

        XCTAssertEqual(radio.getString(), "<input value='option1' type='radio' id='option1' name='option1' class='button button-outline'>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

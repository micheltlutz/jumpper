import XCTest
@testable import jumpper

final class ButtonTests: XCTestCase {
    func testElement() {
        let button = Button("My Button")

        XCTAssertEqual(button.getString(), "<button>My Button</button>")
    }

    func testElementAttr() {
        let button = Button("My Button")
            button.addAttribute(("class","button button-outline") )

        XCTAssertEqual(button.getString(), "<button class='button button-outline'>My Button</button>")
    }

    static var allTests = [
        ("testElement", testElement),
        ("testElementAttr", testElementAttr)
    ]
}

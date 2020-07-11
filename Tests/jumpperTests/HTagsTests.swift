import XCTest
@testable import jumpper

final class HTagsTests: XCTestCase {
    func testElementH1() {
        let element = H1("Hello, World!")

        XCTAssertEqual(element.getString(), "<h1>Hello, World!</h1>")
    }

    func testElementH2() {
        let element = H2("Hello, World!")

        XCTAssertEqual(element.getString(), "<h2>Hello, World!</h2>")
    }

    func testElementH3() {
        let element = H3("Hello, World!")

        XCTAssertEqual(element.getString(), "<h3>Hello, World!</h3>")
    }

    func testElementH4() {
        let element = H4("Hello, World!")

        XCTAssertEqual(element.getString(), "<h4>Hello, World!</h4>")
    }

    func testElementH5() {
        let element = H5("Hello, World!")

        XCTAssertEqual(element.getString(), "<h5>Hello, World!</h5>")
    }

    func testElementH6() {
        let element = H6("Hello, World!")

        XCTAssertEqual(element.getString(), "<h6>Hello, World!</h6>")
    }

    func testElementH1Attr() {
        let element = H1("Hello, World!")
        element.addAttribute(("class", "sameClass"))

        XCTAssertEqual(element.getString(), "<h1 class='sameClass'>Hello, World!</h1>")
    }

    static var allTests = [
        ("testElementH1", testElementH1),
        ("testElementH2", testElementH2),
        ("testElementH3", testElementH3),
        ("testElementH4", testElementH4),
        ("testElementH5", testElementH5),
        ("testElementH6", testElementH6),
        ("testElementH1Attr", testElementH1Attr)
    ]
}

import XCTest
@testable import jumpper

final class BrTests: XCTestCase {
    func testElement() {
        let br = Br()

        XCTAssertEqual(br.getString(), "<br>")
    }

    static var allTests = [
        ("testElement", testElement)
    ]
}

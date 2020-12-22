import XCTest
@testable import jumpper

final class CompositeElementsTests: XCTestCase {
    func testElement() {
        let element = CompositeElements()
        element.add("Hello, World!")
        element.add(Label("My Label"))

        XCTAssertEqual(element.getString(), "Hello, World!<label>My Label</label>")
    }

    static var allTests = [
        ("testElement", testElement),
    ]
}

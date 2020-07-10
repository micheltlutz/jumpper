import XCTest

import DivTests
import LinkTests

var tests = [XCTestCaseEntry]()
tests += LinkTests.allTests()
tests += BlockquoteTests.allTests()
tests += DivTests.allTests()
XCTMain(tests)

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(BlockquoteTests.allTests),
        testCase(BrTests.allTests),
        testCase(ButtonTests.allTests),
        testCase(LinkTests.allTests),
        testCase(CanvasTests.allTests),
        testCase(CenterTests.allTests),
        testCase(CodeTests.allTests),
        testCase(UTagTests.allTests),
        testCase(EmTests.allTests),
        testCase(StrongTests.allTests),
        testCase(HrTests.allTests),
        testCase(FormTests.allTests),
        testCase(HTagsTests.allTests),
        testCase(ImgTests.allTests),
        testCase(FieldsetTests.allTests),
        testCase(DivTests.allTests),
        testCase(MainTests.allTests),
        testCase(LabelTests.allTests),
        testCase(PreTests.allTests),
        testCase(PTests.allTests),
        testCase(SectionTests.allTests),
        testCase(TextTests.allTests)
    ]
}
#endif

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Devtools_xcode_lab1Tests.allTests),
    ]
}
#endif

import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ArrayListTests.allTests),
        testCase(HashTableTests.allTests),
        testCase(LinkedListTests.allTests),
        testCase(DoublyLinkedListTests.allTests),
        testCase(StackTests.allTests),
        testCase(QueueTests.allTests),
        testCase(BSTreeTests.allTests),
        testCase(GraphTests.allTests),
    ]
}
#endif

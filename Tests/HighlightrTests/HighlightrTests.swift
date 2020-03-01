import XCTest
@testable import Highlightr

final class HighlightrTests: XCTestCase {
  
    func testHighlightr() throws {
      	guard let highlightr = Highlightr() else {
          XCTAssert(false, "could not create Highlightr")
          return
        }
        
      	highlightr.setTheme(to: "paraiso-dark")
      	let code = "let a = 1"
      	// You can omit the second parameter to use automatic language detection.
      	let highlightedCode = highlightr.highlight(code, as: "swift")
        XCTAssertNotNil(highlightedCode)
    }

    static var allTests = [
        ("testHighlightr", testHighlightr),
    ]
}

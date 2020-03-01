import XCTest
@testable import Highlightr

final class HighlightrTests: XCTestCase {
  
    func testHighlightr() throws {
      	guard let highlightr = Highlightr() else {
          XCTAssert(false, "could not create Highlightr")
          return
        }
        
      	let themeOK = highlightr.setTheme(to: "default")
        XCTAssertTrue(themeOK)
      
      	let code = "let a = 1"
      	// You can omit the second parameter to use automatic language detection.
      	let highlightedCode = highlightr.highlight(code, as: "swift")
        XCTAssertNotNil(highlightedCode)
        
        if let v = highlightedCode {
            XCTAssert(v.length == code.count)
        }
    }

    static var allTests = [
        ("testHighlightr", testHighlightr),
    ]
}

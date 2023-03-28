import XCTest
@testable import SpeechSynthesizer

final class SpeechSynthesizerTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        //XCTAssertEqual(SpeechSynthesizer().text, "Hello, World!")
      
      let text = """
Good morning/afternoon,

I understand that you have requested my assistance. I am happy to assist you with this and I will do my best to ensure that your needs are met. Before we begin, I would like to confirm the details of the task and clarify any questions that you may have. Please let me know if you have any specific requirements or deadlines that I should be aware of. I look forward to working with you.

Thank you,
Ethan
"""
      SpeechSynthesizer.shared.speakText(text)
    }
}

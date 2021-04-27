import XCTest
@testable import Voyage

final class VoyageTests: XCTestCase {
    func testPost() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let voyage = Voyage()
        let url = URL(string: "http://localhost:5000/authentication")!
        
        voyage.post(with: url,
                    body: User(userName: "lobsterveggies", password: "potatoes"),
                    completion: didFetchToken(token:),
                    fail: didFailWithError(error:))
    }
    
    func didFetchToken(token: UserToken) {
        print("yay!")
        XCTAssertEqual("Test", "Test")
    }
    
    func didFailWithError(error: Error) {
        XCTFail("Networking Error: \(error)")
    }
}

import XCTest
import ClientAPI

class UserViewUITests: XCTestCase {
    func test_CheckTextUI(){
        let app = XCUIApplication()
        app.launch()

        XCTAssert(app.staticTexts[Constants.userName].waitForExistence(timeout: 0.5))
        XCTAssert(app.staticTexts[Constants.userEmail].waitForExistence(timeout: 0.5))
    }
    
    func test_NavigationTitle() {
        let app = XCUIApplication()
        app.launch()

        XCTAssert(app.navigationBars[Constants.employee].waitForExistence(timeout: 1))
    }
    
    func test_UserListAccessibility() {
        let app = XCUIApplication()
        app.launch()

        XCTAssert(app.otherElements[Constants.userList].exists)
    }
    
    func test_UserListContent() {
        let app = XCUIApplication()
        app.launch()

        let userCount = app.staticTexts.matching(identifier: Constants.userName).count
        XCTAssert(userCount > 0)
    }

    func test_UserSelection() {
        let app = XCUIApplication()
        app.launch()

        let firstUserName = app.staticTexts.matching(identifier: Constants.userName).firstMatch.label
        app.staticTexts[firstUserName].tap()
    }
}

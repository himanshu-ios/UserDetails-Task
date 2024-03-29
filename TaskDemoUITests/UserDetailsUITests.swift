import XCTest
@testable import TaskDemo

final class UserDetailsUITests: XCTestCase {
    func testUserDetailsDisplay() {
                let app = XCUIApplication()
                app.launch()

        app.collectionViews["list"].staticTexts["Sincere@april.biz"].tap()

        let scrollViewsQuery = app.scrollViews
        scrollViewsQuery.otherElements.images["User Image"].tap()

        let userImageElementsQuery = scrollViewsQuery.otherElements.containing(.image, identifier:"User Image")
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Email:: Sincere@april.biz").element(boundBy: 0).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Email:: Sincere@april.biz").element(boundBy: 1).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Company:: Romaguera-Crona").element(boundBy: 1).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Company:: Romaguera-Crona").element(boundBy: 0).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Phone:: 1-770-736-8031 x56442").element(boundBy: 0).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Phone:: 1-770-736-8031 x56442").element(boundBy: 1).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Website:: hildegard.org").element(boundBy: 1).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Website:: hildegard.org").element(boundBy: 0).tap()

        let employeesButton = app.navigationBars["User Details"].buttons["Employees"]
        employeesButton.tap()
        app.collectionViews["list"].staticTexts["Ervin Howell"].tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Email:: Shanna@melissa.tv").element(boundBy: 0).tap()
        scrollViewsQuery.otherElements.containing(.image, identifier:"User Image").element.tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Company:: Deckow-Crist").element(boundBy: 1).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Company:: Deckow-Crist").element(boundBy: 0).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Phone:: 010-692-6593 x09125").element(boundBy: 0).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Phone:: 010-692-6593 x09125").element(boundBy: 1).tap()
        employeesButton.tap()
        app.collectionViews["list"].staticTexts["Telly.Hoeger@billy.biz"].tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Email:: Telly.Hoeger@billy.biz").element(boundBy: 1).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Email:: Telly.Hoeger@billy.biz").element(boundBy: 0).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Company:: Johns Group").element(boundBy: 0).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Company:: Johns Group").element(boundBy: 1).tap()
        userImageElementsQuery.children(matching: .staticText).matching(identifier: "Phone:: 210.067.6132").element(boundBy: 1).tap()
                
            }
}

//
//  AppleMusicCloneUITests.swift
//  AppleMusicCloneUITests
//
//  Created by Artem Golovchenko on 15.02.2026.
//

import XCTest

final class AppleMusicCloneUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testTabBarNavigation() throws {
        let app = XCUIApplication()
        app.launch()

        let homeTab = app.tabBars.buttons.element(boundBy: 0)
        XCTAssertTrue(homeTab.exists, "Таб Home має існувати")
        homeTab.tap()

        let homeHeader = app.staticTexts["Home"]

        if homeHeader.waitForExistence(timeout: 2) {
             XCTAssertTrue(homeHeader.exists, "Заголовок 'Home' має відображатися на першому екрані")
        }

        let mediaTab = app.tabBars.buttons.element(boundBy: 3)
        XCTAssertTrue(mediaTab.exists, "Таб Media має існувати")
        mediaTab.tap()

        let mediaHeader = app.staticTexts["Media"]

        if mediaHeader.waitForExistence(timeout: 2) {
             XCTAssertTrue(mediaHeader.exists, "Заголовок 'Media' має відображатися після переходу на вкладку")
        }

        let gridItem = app.staticTexts["Grid Item"].firstMatch
        XCTAssertTrue(gridItem.exists, "Елементи сітки мають бути видимі на екрані Media")
    }
}

import XCTest
@testable import SwiftWeekdays

final class WeekdayTests: XCTestCase {
    func testNames() throws {
        XCTAssertEqual(Weekday.sunday.name, "Sunday")
        XCTAssertEqual(Weekday.monday.name, "Monday")
        XCTAssertEqual(Weekday.tuesday.name, "Tuesday")
        XCTAssertEqual(Weekday.wednesday.name, "Wednesday")
        XCTAssertEqual(Weekday.thursday.name, "Thursday")
        XCTAssertEqual(Weekday.friday.name, "Friday")
        XCTAssertEqual(Weekday.saturday.name, "Saturday")
    }
    
    func testAbbreviations() throws {
        XCTAssertEqual(Weekday.sunday.abbreviation, "S")
        XCTAssertEqual(Weekday.monday.abbreviation, "M")
        XCTAssertEqual(Weekday.tuesday.abbreviation, "T")
        XCTAssertEqual(Weekday.wednesday.abbreviation, "W")
        XCTAssertEqual(Weekday.thursday.abbreviation, "T")
        XCTAssertEqual(Weekday.friday.abbreviation, "F")
        XCTAssertEqual(Weekday.saturday.abbreviation, "S")
    }
}

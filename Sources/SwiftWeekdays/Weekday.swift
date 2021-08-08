//
//  Weekday.swift
//  Weekday
//
//  Created by Kenneth Chew on 8/8/21.
//

import Foundation

/// A given day of the week.
///
/// This enumeration, despite the name, also allows representation of weekends as well.
public enum Weekday: Int, CaseIterable, Hashable {
    case sunday
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    
    /// The name of the day of the week.
    public var name: String {
        "\(self)".capitalized
    }
    
    /// The first letter of the day of the week.
    public var abbreviation: String {
        "\(name.first ?? Character(""))"
    }
}

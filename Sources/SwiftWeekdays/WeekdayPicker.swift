//
//  WeekdayPicker.swift
//  WeekdayPicker
//
//  Created by Kenneth Chew on 8/8/21.
//

import SwiftUI

/// A control for selecting multiple weekdays.
///
/// Use a `WeekdayPicker` when you want to provide a view that allows the user to select a set of weekdays. The view binds to a set of ``Weekday`` instances.
///
/// The following example creates a `WeekdayPicker`, which appears in a form as a row of 7 circles, representing each day of the week.
/// ```
/// @State private var weekdays: Set<Weekday> = []
///
/// var body: some View {
///     Form {
///         WeekdayPicker(selection: $weekdays)
///     }
/// }
/// ```
@available(iOS 14.0, *)
public struct WeekdayPicker: View {
    @Binding var selection: Set<Weekday>
    
    /// Creates an instance that selects multiple days of the week.
    /// - Parameter selection: The set of ``Weekday``s being displayed and selected.
    public init(selection: Binding<Set<Weekday>>) {
        self._selection = selection
    }
    
    public var body: some View {
        HStack {
            WeekdayCircle(day: .sunday, weekdays: $selection)
            WeekdayCircle(day: .monday, weekdays: $selection)
            WeekdayCircle(day: .tuesday, weekdays: $selection)
            WeekdayCircle(day: .wednesday, weekdays: $selection)
            WeekdayCircle(day: .thursday, weekdays: $selection)
            WeekdayCircle(day: .friday, weekdays: $selection)
            WeekdayCircle(day: .saturday, weekdays: $selection)
        }
    }
}

@available(iOS 14.0, *)
struct WeekdayPicker_Previews: PreviewProvider {
    @State static var weekdays = Set<Weekday>()
    
    static var previews: some View {
        return Form { WeekdayPicker(selection: $weekdays) }
            .previewLayout(.sizeThatFits)
    }
}

//
//  WeekdayCircle.swift
//  WeekdayCircle
//
//  Created by Kenneth Chew on 8/8/21.
//

import SwiftUI

/// A control for selecting a specific day of the week.
@available(iOS 14.0, *)
struct WeekdayCircle: View {
    let day: Weekday
    
    @Binding var weekdays: Set<Weekday>
    
    var isEnabled: Bool {
        weekdays.contains(day)
    }
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(isEnabled ? .blue : .clear)
            Text(day.abbreviation)
                .foregroundColor(isEnabled ? .white : nil)
        }
        .onTapGesture {
            toggleDay()
        }
        .accessibilityLabel(day.name)
        .accessibilityAddTraits(.isButton)
        .accessibilityAddTraits(isEnabled ? .isSelected : [])
    }
    
    func toggleDay() {
        withAnimation(.easeIn(duration: 0.15)) {
            if !weekdays.insert(day).inserted {
                weekdays.remove(day)
            }
        }
    }
}

@available(iOS 14.0, *)
struct WeekdayCircle_Previews: PreviewProvider {
    @State static var weekdays: Set<Weekday> = []
    
    static var previews: some View {
        return ForEach(Weekday.allCases, id: \.self) { day in
            WeekdayCircle(day: day, weekdays: $weekdays)
        }
        .previewLayout(.sizeThatFits)
    }
}

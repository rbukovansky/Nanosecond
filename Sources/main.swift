import Foundation

var dateComponents = DateComponents()
dateComponents.year = 2016
dateComponents.month = 11
dateComponents.day = 08
dateComponents.hour = 13
dateComponents.minute = 53
dateComponents.second = 01
dateComponents.nanosecond = 600

print("dateComponents.second = \(dateComponents.second)")
print("dateComponents.nanosecond = \(dateComponents.nanosecond)")

let date = Calendar(identifier: Calendar.Identifier.gregorian).date(from: dateComponents)
let dateFormatter: DateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss.SSS ZZZ"

print("Date = " + dateFormatter.string(from: date!))


let nanosecond: Int = Calendar.current.component(.nanosecond, from: date!)

print("Nanosecond = \(nanosecond)")



/*
let stringDate = "2016-11-08T11:53:01.600 +0000"
let dateFormatter: DateFormatter = DateFormatter()
dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS' 'ZZZ"

let date = dateFormatter.date(from: stringDate)

print("Date = " + dateFormatter.string(from: date!))

let nanosecond: Int = Calendar.current.component(.nanosecond, from: date!)

print("Nanosecond = \(nanosecond)")  
*/
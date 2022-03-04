import Foundation



enum Days : Int, CaseIterable {
    case MONDAY = 1
    case TUESDAY = 2
    case WEDNESDAY = 3
    case THURSDAY = 4
    case FRIDAY = 5
    case SATURDAY = 6
    case SUNDAY = 7
}
func exercise3Q1(dayNumber: Int) {
    switch dayNumber {
    case Days.MONDAY.rawValue : print("Monday")
    case Days.TUESDAY.rawValue : print("Tuesday")
    case Days.WEDNESDAY.rawValue : print("Wednesday")
    case Days.THURSDAY.rawValue : print("Thursday")
    case Days.FRIDAY.rawValue : print("Friday")
    case Days.SATURDAY.rawValue : print("Saturday")
    case Days.SUNDAY.rawValue : print("Sunday")
    default: print("Invalid day number")
    }
}


enum Months : Int {
    case January = 0
    case Feruary = 1
    case March = 2
    case April = 3
    case May = 4
    case June = 5
    case July = 6
    case August = 7
    case Septmber = 8
    case October = 9
    case November = 10
    case December = 11
}
func exercise3Q2(month: Months) {
    let array  = [30,28,31,30,31,30,31,31,30,31,30,31]
    switch month {
    case Months.January : print(array[Months.January.rawValue])
    case Months.Feruary : print(array[Months.Feruary.rawValue])
    case Months.March : print(array[Months.March.rawValue])
    case Months.April : print(array[Months.April.rawValue])
    case Months.May : print(array[Months.May.rawValue])
    case Months.June : print(array[Months.June.rawValue])
    case Months.July : print(array[Months.July.rawValue])
    case Months.August : print(array[Months.August.rawValue])
    case Months.Septmber : print(array[Months.Septmber.rawValue])
    case Months.October : print(array[Months.October.rawValue])
    case Months.November : print(array[Months.November.rawValue])
    case Months.December: print(array[Months.December.rawValue])
    }
}

enum Months2 : Int {
    case January = 1
    case Feruary = 2
    case March = 3
    case April = 4
    case May = 5
    case June = 6
    case July = 7
    case August = 8
    case Septmber = 9
    case October = 10
    case November = 11
    case December = 12
}
func exercise3Q3(month: Months2) {
    switch month {
    case Months2.January : print(Months2.January.rawValue)
    case Months2.Feruary : print(Months2.Feruary.rawValue)
    case Months2.March : print(Months2.March.rawValue)
    case Months2.April : print(Months2.April.rawValue)
    case Months2.May : print(Months2.May.rawValue)
    case Months2.June : print(Months2.June.rawValue)
    case Months2.July : print(Months2.July.rawValue)
    case Months2.August : print(Months2.August.rawValue)
    case Months2.Septmber : print(Months2.Septmber.rawValue)
    case Months2.October : print(Months2.October.rawValue)
    case Months2.November : print(Months2.November.rawValue)
    case Months2.December: print(Months2.December.rawValue)
    }
}

enum Proccesses : String, CaseIterable {
    case STATUS25 = "Processing"
    case STATUS50 = "Processing Half Done"
    case STATUS75 = "Proccessing about to finish"
    case STATUS100 = "Proccessed"
}
func exercise3Q4(process: Proccesses) {
    switch process {
    case Proccesses.STATUS25 : print(Proccesses.STATUS25.rawValue)
    case Proccesses.STATUS50 : print(Proccesses.STATUS50.rawValue)
    case Proccesses.STATUS75 : print(Proccesses.STATUS75.rawValue)
    case Proccesses.STATUS100 : print(Proccesses.STATUS100.rawValue)
    }
}
func exercise3Q5(month: Months2) {
    switch month {
    case Months2.January : print(Months2.January.rawValue)
    case Months2.Feruary : print(Months2.Feruary.rawValue)
    case Months2.March : print(Months2.March.rawValue)
    case Months2.April : print(Months2.April.rawValue)
    case Months2.May : print(Months2.May.rawValue)
    case Months2.June : print(Months2.June.rawValue)
    case Months2.July : print(Months2.July.rawValue)
    case Months2.August : print(Months2.August.rawValue)
    case Months2.Septmber : print(Months2.Septmber.rawValue)
    case Months2.October : print(Months2.October.rawValue)
    case Months2.November : print(Months2.November.rawValue)
    case Months2.December: print(Months2.December.rawValue)
    }
}
func exercise3Q6() {
    print(Proccesses.allCases)
}


enum SocialMediaPlatform {
    case twitter(followers: Int)
    case youtube(subscribers: Int)
    case instagram(followers: Int)
    case linkedIn(connections: Int)
    case facebook(friends: Int)
}
func exercise3Q7(for platform: SocialMediaPlatform) {
    switch platform {
    case .twitter(let followers) where followers > 10_000:
        print("Eligible for sponsored Tweet.")
    case .youtube(let subscribers) where subscribers > 25_000:
        print("Eligible for sponsored video.")
    case .instagram(let followers) where followers > 10_000:
        print("Eligible for sponsored Post.")
    case .linkedIn(let connections) where connections > 1000:
        print("Eligible for sponsored Post.")
    case .facebook(let friends) where friends > 5000:
        print("Eligible for sponsored Post and Status Update.")
    case .instagram, .linkedIn, .twitter, .youtube, .facebook:
        print("Not eligible for sponsorship")
    }
}
func exercise3Q8(process: Proccesses) {
    switch process {
    case Proccesses.STATUS25 : print(Proccesses.STATUS25.rawValue)
    case Proccesses.STATUS50 : print(Proccesses.STATUS50.rawValue)
    case Proccesses.STATUS75 : print(Proccesses.STATUS75.rawValue)
    case Proccesses.STATUS100 : print(Proccesses.STATUS100.rawValue)
    }
}


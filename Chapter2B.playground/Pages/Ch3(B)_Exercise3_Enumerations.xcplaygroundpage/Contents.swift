import Foundation

//exercise3Q1()
//exercise3Q2()
//exercise3Q3()
//exercise3Q4()
//exercise3Q5()
//exercise3Q6()
//exercise3Q7()
//exercise3Q8()

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

//enum Months: Int {
//    case JANUARY = 30
//    case february = 28
//    case march = 31
//    case april = 30
//    case may = 31
//    case june = 30
//    case july = 31
//    case august = 31
//    case september = 30
//    case october = 31
//    case november = 30
//    case december = 31
//}
func exercise3Q2() {}
func exercise3Q3() {}
func exercise3Q4() {}
func exercise3Q5() {}
func exercise3Q6() {}
func exercise3Q7() {}
func exercise3Q8() {}


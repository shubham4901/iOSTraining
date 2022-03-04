//: [Previous](@previous)

import Foundation

//exercise5Q1()
//exercise5Q2()

enum PasswordExeption : Error {
case PasswordTooShotExeption(currentLength: Int)
    case PasswordEmptyException
}
func checkPassword(password: String) throws -> Bool {
    if password.isEmpty {
        throw PasswordExeption.PasswordEmptyException
    } else if password.count < 8{
         throw PasswordExeption.PasswordTooShotExeption(currentLength: password.count)
    }
    return true
}
func exercise5Q1() {
    let pass = ""
    do{
        try checkPassword(password: pass)
    } catch PasswordExeption.PasswordEmptyException {
        print("Password must be filled")
    } catch PasswordExeption.PasswordTooShotExeption(let currentLength) {
        print("Password must be of 8 characters and yours is of \(currentLength) characters")
    } catch {
        print("Error Occured")
    }
}

enum CartExeption : Error {
    case StockNotAvailableExeption(desiredCartSize: Int, currentStock: Int)
}
func checkStocks(desiredCartSize: Int) throws -> Bool {
    if desiredCartSize > getCurrentStock() {
        throw CartExeption.StockNotAvailableExeption(desiredCartSize: desiredCartSize, currentStock: getCurrentStock())
    }
    return true
}
func getCurrentStock() -> Int {
    return 167
}
func exercise5Q2() {
    do {
        try checkStocks(desiredCartSize: 170)
    } catch CartExeption.StockNotAvailableExeption(let desiredCartSize, let currentStock) {
        print("Sorry to tell you that we can not fullfill your requirements of your desired quantity.\nYou have requested for \(desiredCartSize) and our current stock is \(currentStock) \nYou can order \(currentStock) products maximum.")
    } catch {
        print("Error occured")
    }
}

//: [Previous](@previous)

import Foundation

//Chapter 2 - Exercise 2 - A - Declaration and Print of Variables
declarationAndPrinting()

//Chapter 2 - Exercise 2 - B - Addition of Variable
addFive(num: 67)

//Chapter 2 - Exercise 2 - C - Simple Intrest
simpleIntrest();

func declarationAndPrinting() {
    
    print("Chapter 2 - Exercise 2 - A - Declaration and Print of Variables\n")
    let stringVariable = "This is String"
    let doubleVariable = 34.56
    let floatVariable = 3.145678
    let boolVariable = true
    let intVariable = 10

    print(stringVariable)
    print(doubleVariable)
    print(floatVariable)
    print(boolVariable)
    print(intVariable)
    
}




func addFive(num: Int) {
    
    print("\n\nChapter 2 - Exercise 2 - B - Addition of Variable\n")
    print("\(num) + 5 = \(num+5)")
    
}


func simpleIntrest() {

    print("\n\nChapter 2 - Exercise 2 - C - Simple Intrest\n")

    let intrest = 15
    var amount = 1000000
    var duration = 2

    var simpleIntrest = amount * duration * intrest/100
    print("Total Intrest will be \(simpleIntrest)")
    print("Total amount payable is \(simpleIntrest+amount)")
    print("Per anum intrest is \(simpleIntrest/duration)")


}



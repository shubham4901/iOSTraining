//: [Previous](@previous)

import Foundation

//smartFridge(baconAge: 5, eggAge: 2)
func smartFridge(baconAge: Int, eggAge: Int) {
    
    var ingredient: [String:Int] = [:]
    var youCanCook: [String] = []
    
    ingredient["Egg"] = 21
    ingredient["Bacon"] = 7
    
    if let _ = ingredient.first(where: {$0.key == "Egg" && $0.value < eggAge})?.key {
        print("Throw out Eggs")
    } else {
        youCanCook.append("Egg")
    }
    
    if let _ = ingredient.first(where: {$0.key == "Bacon" && $0.value < baconAge})?.key {
        print("Throw out Bacon")
    } else {
        youCanCook.append("Bacon")
    }
    print("You can cook \(youCanCook.joined(separator: " and "))")
}

//isLeapYear(year:1904)


func isLeapYear(year: Int) -> Bool {
    
    var val = false
    

    if year%400 == 0 {
        val = true
    } else if year%100 == 0 {
        val = false
    } else if year%4 == 0 {
        val = true
    } else {
        val = false
    }
    
    print(val ? "Leap Year" : "Not a Leap Year")
    return val
}

func regenerateHitPoints(currentHP: Int) {
    
    var updatedHP = 0
    if currentHP >= 20 {
        updatedHP = ((currentHP/10)*10)+10
    } else {
        updatedHP = 20
    }
    print(updatedHP)
}

var grades = [5.6,8.9,7.8,8.23]
var myGrade = 7.8
checkAverage(studentGrades:grades, myGrade: myGrade)

func checkAverage(studentGrades: [Double], myGrade: Double) {
    
    let average = studentGrades.reduce(0, +) / Double(studentGrades.count)

    if average < myGrade {
        print("Average score of all the student is \(average) and your score is \(myGrade) so, you are Above Average")
    } else if average > myGrade {
        print("Average score of all the student is \(average) and your score is \(myGrade) so, you are Below Average")
    } else {
        print("Average score of all the student is \(average) and your score is \(myGrade) so, you are Average")
    }
}


tipCounter(mealCost: 3.5, tip:20)

func tipCounter(mealCost: Double, tip: Int) {
    
    var tipValue = (Double(tip)/100) * mealCost
    
    print(tipValue+mealCost)
    
}

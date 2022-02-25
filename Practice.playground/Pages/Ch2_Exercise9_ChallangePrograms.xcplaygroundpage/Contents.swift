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

isLeapYear(year:1900)


func isLeapYear(year: Int) -> Bool {
    
    var val = false
    

    if year%4 == 0 {
        if year%100 == 0 && year%400 == 0 {
            val = true
        }
    } else {
        val = false
    }
    print(val)
    return val
}

//: [Previous](@previous)

import Foundation


//Chapter 2 - Exercise 9 - A - You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out. If you can cook bacon and eggs print you can cook bacon and eggs. If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order.
smartFridge(baconAge: 5, eggAge: 2)


//Chapter 2 - Exercise 9 - B - ou are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.\The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case.
isLeapYear(year:2019)


//Chapter 2 - Exercise 9 - C - You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100. 100 represents full health. 0 represents dead. You want to add regenerating health to the game using the following rules: /n -> HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 …) \n -> When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, …) \n-> If the character has 0 HP then he doesn’t regenerate life (he’s dead)\nGiven the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.
regenerateHitPoints(currentHP:31)

/*Chapter 2 - Exercise 9 - D - You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of typeDouble.
 You are also given your grade in the class stored in a variable yourGrade of type Double.
 Print above average if your grade is greater than the class average or below average” otherwise.
  Note: the average of the class includes your grade. */
var grades = [5.6,8.9,7.8,8.23]
var myGrade = 7.8
checkAverage(studentGrades:grades, myGrade: myGrade)

/*Chapter 2 - Exercise 9 - E - You have the cost of a meal at a restaurant stored in a variable mealCost of type Double.
You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int.
Print the total cost of the meal.*/
tipCounter(mealCost: 3.5, tip: 20)

func smartFridge(baconAge: Int, eggAge: Int) {
    
    
    print("\n\nChapter 2 - Exercise 9 - A - You are working on a smart-fridge. The smart-fridge knows how old the eggs and bacon in it are. You know that eggs spoil after 3 weeks (21 days) and bacon after one week (7 days).Given baconAge and eggsAge(in days) determine if you can cook bacon and eggs or what ingredients you need to throw out. If you can cook bacon and eggs print you can cook bacon and eggs. If you need to throw out any ingredients for each one print a line with the text throw out <ingredient> (where <ingredient> is bacon or eggs) in any order. \n")
    
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

func isLeapYear(year: Int) -> Bool {
    
    print("\n\nChapter 2 - Exercise 9 - B - You are given a year, determine if it’s a leap year. A leap year is a year containing an extra day. It has 366 days instead of the normal 365 days. The extra day is added in February, which has 29 days instead of the normal 28 days. Leap years occur every 4 years. 2012 was a leap year and 2016 will also be a leap year.The above rule is valid except that every 100 years special rules apply. Years that are divisible by 100 are not leap years if they are not also divisible by 400. For example 1900 was not a leap year, but 2000 was. Print Leap year! or Not a leap year! depending on the case. \n")
    
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
    
    print(val ? "\(year) is Leap Year" : "\(year) is not a Leap Year")
    return val
}

func regenerateHitPoints(currentHP: Int) {
    
    print("\n\nChapter 2 - Exercise 9 - C - You are working on a videogame where the character has a certain number of hitpoints(HP) ranging from 0 to 100. 100 represents full health. 0 represents dead. You want to add regenerating health to the game using the following rules: /n-> HP always regenerates up to numbers of the form X0 (75 -> 80 , 32 -> 40 …) \n-> When HP is below 20 it regenerates up to 20 (13 -> 20, 5 -> 20, …) \n-> If the character has 0 HP then he doesn’t regenerate life (he’s dead) \n->Given the current hp of the character stored in a variable hp print the hp the player will have after regenerating life.\n")
    
    var updatedHP = 0
    if currentHP != 0 {
        if currentHP >= 20 {
            if currentHP%10 != 0 {
                updatedHP = ((currentHP/10)*10)+10
            } else {
                updatedHP = currentHP + 5
            }
        } else {
            updatedHP = 20
        }
        print("Your HP is upgraded to \(updatedHP)")
    } else {
        print("Game Over :(")
    }
}



func checkAverage(studentGrades: [Double], myGrade: Double) {
    
    print("\n\nChapter 2 - Exercise 9 - D - You are given three grades obtained by 3 students in a class stored in variables grade1, grade2, grade3 of typeDouble. You are also given your grade in the class stored in a variable yourGrade of type Double. Print above average if your grade is greater than the class average or below average” otherwise. Note: the average of the class includes your grade.\n")
    
    let average = studentGrades.reduce(0, +) / Double(studentGrades.count)

    if average < myGrade {
        print("Average score of all the student is \(average) and your score is \(myGrade) so, you are Above Average")
    } else if average > myGrade {
        print("Average score of all the student is \(average) and your score is \(myGrade) so, you are Below Average")
    } else {
        print("Average score of all the student is \(average) and your score is \(myGrade) so, you are Average")
    }
}




func tipCounter(mealCost: Double, tip: Int) {
    
    
    print("\n\nChapter 2 - Exercise 9 - E - You have the cost of a meal at a restaurant stored in a variable mealCost of type Double. You would like to leave a tip of a certain percentage. The percentage is stored in a variable tip of type Int. Print the total cost of the meal.\n")
    
    let tipValue = (Double(tip)/100) * mealCost
    
    print("Your meal cost is \(mealCost)$.\nYou want to give \(tip)% tip which is \(tipValue)$. \nYour total cost of the meal will be \(tipValue+mealCost))")
    
}








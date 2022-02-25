//: [Previous](@previous)

import Foundation

var string1 = "Simform"
var string2 = "Swift"
var string3 = "Examples"
var string4 = "Simform Solutions"
var temp = "S"





//Chapter 2 - Exercise 4 - A - Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
firstTwoChars(temp: string1)


//Chapter 2 - Exercise 4 - B - Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is.
withoutFirstAndLastChars(temp: string1)


//Chapter 2 - Exercise 4 - C - Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.
concateWithoutFirstChar(temp1: string2, temp2: string3)


//Chapter 2 - Exercise 4 - D - Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.
shiftTwoCharsToEnd(temp:string2)


//Chapter 2 - Exercise 4 - E - Write a Swift program to test if a given string starts with "Sw".
isStartingWith(temp: string2, check: "Sw")


//Chapter 2 - Exercise 4 - F - Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n.
subStringOfGivenChars(temp: string4, index: 3)


//Chapter 2 - Exercise 4 - G - Try all string methods
tryStringMethod(temp: string4)



func firstTwoChars(temp: String) {
    
    print("Chapter 2 - Exercise 4 - A - Write a Swift program to create a new string made of a copy of the first two characters of a given string. If the given string is shorter than length 2, return whatever there is. \n")
    
    
    print("Passed String is : \(temp)")

    if temp.count > 2 {
        print("Generated String is : \(temp.prefix(2))")
    } else {
        print("Generated String is : \(temp)")
    }
}

func withoutFirstAndLastChars(temp: String) {
    print("\n\nChapter 2 - Exercise 4 - B - Write a Swift program to create a new string without the first and last character of a given string. The string length must be at least 2.  \n")
    
    print("Passed String is : \(temp)")
    
    if temp.count < 2 {
        print("Passed String must be of length 2")
        return
    } else {
        let start = temp.index(temp.startIndex,offsetBy: 1)
        let end = temp.index(temp.endIndex,offsetBy: -1)
        let range = start...end
        
        print("Generated String is : \(String(temp[range]))")
    }
}

func concateWithoutFirstChar(temp1: String,temp2: String) {
    
    print("\n\nChapter 2 - Exercise 4 - C - Write a Swift program that accept two strings and return their concatenation, except the first char of each string. The given strings length must be at least 1.\n");
    
    print("Passed Strings is : \(temp1) and \(temp2)")
    
    if(temp1.count < 1 && temp2.count < 1) {
        print("Passed String must be of length 2")
        return
    } else {
        var subString1 = temp1;
        var subString2 = temp2;
        subString1.remove(at: temp1.startIndex)
        subString2.remove(at: temp1.startIndex)
        print("Generated String is : \(subString1+subString2)")
    }
}


func shiftTwoCharsToEnd(temp: String) {
    
    
    print("\n\nChapter 2 - Exercise 4 - D - Write a Swift program to move the first two characters of a given string to the end. The given string length must be at least 2.")
    
    print("Passed String is : \(temp)")
    
    if temp.count < 2 {
        print("Passed String must be of length 2")
        return
    } else {
    
        let firstTwo = temp.prefix(2)
        let restChars = temp.suffix(temp.count-2)
        print("Generated String is : \(restChars+firstTwo)")
    }
    
}

func isStartingWith(temp: String, check: String) -> Bool {
    
    print("\n\nChapter 2 - Exercise 4 - E - Write a Swift program to test if a given string starts with \"\(check)\". ")
    
    print("Passed String is : \(temp)")
    print("Passed Check String is : \(check)")
    
    let firstChars = temp.prefix(check.count)
    
    if firstChars == check {
        print("\(temp) does start with \"\(check)\".")
        return true
    } else {
        print("\(temp) does not start with \"\(check)\".")
        return false
    }
    
}


func subStringOfGivenChars(temp: String, index: Int) {
    
    
    print("\n\nChapter 2 - Exercise 4 - E - Write a Swift program to create a new string made of the first and last n chars from a given string. The string length will be at least n. ")
    print("Passed String is : \(temp)")
    print("Passed number to cutout is : \(index)")
    
    if index > temp.count {
        print("Given Index is greater than the String length")
        return
    } else {
        
        let strPart1 = temp.prefix(index)
        let strPart2 = temp.suffix(index)
        print("Generated String is : \(strPart1+strPart2)")
    }
    
}


func tryStringMethod(temp: String) {
    
    print("\n\nChapter 2 - Exercise 4 - G - Try all string methods")
    print("Passed String is : \(temp)")
    
    print("\(temp) has \(temp.count) characters.")
    print("\(temp) as Array : \(Array(temp))")
    
    
    let firstSpace = temp.firstIndex(of: " ") ?? temp.endIndex
    let afterSpace = temp[..<firstSpace]
    print("String after blank space is \(afterSpace)")
    
}




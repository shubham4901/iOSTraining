//: [Previous](@previous)

import Foundation


//Chapter 2 - Exercise 3 - A - String Concatenation
print("Chapter 2 - Exercise 3 - A - String Concatenation\n")
let firstName = "Steve"
let lastName = "Jobs"


var fullName = firstName+" "+lastName;
print(fullName)

//Chapter 2 - Exercise 3 - B - Simple Calculator of Ints and Floats
print("\n\nChapter 2 - Exercise 3 - A - Simple Calculator of Ints and Floats\n")

var int1 = 89
var int2 = 53

print("Int Calculations")
print("\(int1) + \(int2) = \(int1+int2)")
print("\(int1) - \(int2) = \(int1-int2)")
print("\(int1) * \(int2) = \(int1*int2)")
print("\(int1) / \(int2) = \(int1/int2)")

var float1 = 67.13579
var float2 = 23.24680

print("\nFloat Calculations")
print("\(float1) + \(float2) = \(float1+float2)")
print("\(float1) - \(float2) = \(float1-float2)")
print("\(float1) * \(float2) = \(float1*float2)")
print("\(float1) / \(float2) = \(float1/float2)")



//Chapter 2 - Exercise 3 - B - Simple Calculator of Ints and Floats
print("\n\nChapter 2 - Exercise 3 - A - Ternary Operators\n")
print("Ternary Operator is used to assign value to variable with conditions i.e. if you want to check for admin in youir application you can use ternary operator like if user is admin than isAdmin variable will be set as true but user is not an admin than isAdmin variable will be set as false.\n")

var users = ["Joe":0, "Steve":1, "John":0]

var username = "Steve"
var isAdmin = false;
for (key,value) in users {
    if key == username {
        isAdmin = value == 1 ? true : false
        break
    }
}
print(isAdmin)

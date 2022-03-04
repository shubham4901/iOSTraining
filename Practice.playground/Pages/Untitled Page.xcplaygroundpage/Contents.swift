import UIKit


//VARIABLES
var greeting = "Hello, playground" //Normal Variable without type using type inference
var name: String = "Swift" //Normal variable with type
let a = 12 //Constant Varialbe (Value can not be reassigned)

type(of: greeting) //returns variable data type
type(of: name)
type(of: a) //returns variable data type
type(of: StaticVariable.department) //returns variable data type


class StaticVariable {
    
    static var department = "Mobile"; //static varable(Can be access without object)
    
}



//FUCTIONS

//print(addTwoNumbers(a: 1,b: 2))

func addTwoNumbers(a: Int, b: Int) -> Int { //function with return type Int and two parameters of int
    return a+b
}



//LOOPS - FOR

var array = [1,2,3,4,2,6,2,2,2,2]

for i in array { // for each simple
    //print(i)
}

for i in array where i != 2 { //for in with where clause
    //print(i)
}

for i in 1...5 {
    //print(i)
}

for i in stride(from: 2, through: 10, by: 2) { // for with upto 10 (Like <=)
    
    //print(i)
    
}


for i in stride(from: 2, to: 10, by: 2) { // for with upto 10 but not 10 (Like <)
    
    //print(i)
    
}


//LOOP - WHILE

var j = 0//while
while j<array.endIndex {
    //print(array[j])
    j+=1
}


//IF ELSE

var num = 11111;
if num < 10 {
    //print("Number is of one digit")
} else if num < 100 && num > 9 {
    //print("Number is of two digits")
} else if num < 1000 && num > 99 {
    //print("Number is of three digits")
} else {
    //print("Number is of 4+ digits")
}



//GUARD STATEMENT(More like if)


func check() {
    var number1 = 50;
    guard number1 > 10 else { //guard jumps to next code if true else returns and executes else part
        print("is less tan 10")
        return
    }
    print("Greater")
}




//check()
//printValue()






//STRING FUNCTIONS

var str1 = "GOOD"
var str2 = "morning"

var num4 = 4;


var str3 = str1 + str2 //append way 1
var str4 = "i am wishing you \(str1) \(str2)" //append way two with easy custom string
print(str4)



print(str2.uppercased()) // convert to uppercase
print(str1.lowercased()) //convert to lowercase
print(str4.count) //string length

print("this is num = ",String(num4))
print("this is num = \(num4)")




//Optionals and unwrapping

var option: String?
//Optional variable which means it may or may not have String

print(option) // it is nill so it will print nill
option = "Hello" // assigning value to option
print(option) // it is optional variable so it will return vlue with optional tag
print(type(of: option)) //its type too will optional<String>





var notanOption: String = "123" //simple variable only allows string
//notanOption = nil

if let i = option { //checking if option has value or it is nil
    //print(i)
} else {
    //print("nil")
}
printValue()
func printValue() {
    var str: String? = "123";
    
    guard let val = str else {return} //guard with optional var and var unwrapping
    
    print("Is not empty")
}














/*
 1.Optional / Unwrapping
 2.String Functions
 3.Guard
 4.IF Else
 5.Loops
 6.functions
 7.DataTypes
 8.Constants
 9.Static Vars
 10.Variables
 11.Type Inference
 */


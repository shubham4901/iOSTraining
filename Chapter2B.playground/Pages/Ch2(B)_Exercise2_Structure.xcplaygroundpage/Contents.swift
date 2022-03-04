//: [Previous](@previous)

import Foundation

//exercise2Q1()
//exercise2Q2()
//exercise2Q3()
//exercise2Q4()
//exercise2Q5()
//exercise2Q6()
//exercise2Q7()

struct Work {
    var workLocation: String
    var workHours: Int
    var projectNames: [String]
    
    func getProjects() -> [String] {
        for i in projectNames {
            print(i)
        }
        return projectNames
    }
}
func exercise2Q1() {
    let employee = Work(workLocation: "Ahmedabad", workHours: 8, projectNames: ["ETUs - URL Shortner","Numbers - The Encyclopedia", "Karma - The Gym Advisor", "Sheetal Foods - OMS","Shivam Sales -SMS"])
    employee.getProjects()
}

struct StructIntializer {
    var temp1: Int
    var temp2: String
    var temp3: Double
}
func exercise2Q2() {
    let structure = StructIntializer(temp1: 10, temp2: "Structure",temp3: 3.4)
    print(structure.temp1)
    print(structure.temp2)
    print(structure.temp3)
}

struct StructWOIntializer {
    var temp1: Int = 10
    var temp2: String?
    var temp3: Double?
}
func exercise2Q3() {
    let without = StructWOIntializer()
    print("Without Initializer")
    print(without.temp1)
    print(without.temp2 ?? "N/A")
    print(without.temp3 ?? "N/A")
    
    let with = StructWOIntializer(temp2: "With", temp3: 1.0)
    print("\nWith Initializer")
    print(with.temp1)
    print(with.temp2 ?? "N/A")
    print(with.temp3 ?? "N/A")
}

struct OddEven {
    var numbers: [Int]
    
    init(number: [Int]) {
        self.numbers = number
    }
    
    func differentiate() -> (odd: [Int], even:[Int]) {
        var oddArray: [Int] = []
        var evenArray: [Int] = []
        for i in numbers {
            if i%2 == 0 {
                evenArray.append(i)
            } else {
                oddArray.append(i)
            }
        }
        return (odd: oddArray, even: evenArray)
    }
}
func exercise2Q4() {
    let oddEven = OddEven(number: [1, 3, 5, 6, 8, 10, 9, 7, 8, 12])
    print("Even numbers : \(oddEven.differentiate().even)")
    print("Odd numbers : \(oddEven.differentiate().odd)")
}

struct Person {
    var name: String
    var gender: String
    var age: Int
}
func exercise2Q5() {
    let persons = [Person(name: "Joe", gender: "Male", age: 27),Person(name: "Harry", gender: "Male", age: 21)]
    for i in persons {
        print("Name : \(i.name) Gender : \(i.gender) Age : \(i.age)")
    }
}

struct Example {
    var a: String = ""
}
func exercise2Q6() {
    var example1 = Example()
    example1.a = "Hello"
    var example2 = example1
    example2.a = "Hi"
    print(example1.a)
    print(example2.a)
    print("Because Struct is a value type")
}

class DifferenceClass {
    var a: String
    
    init(a: String) {
        self.a = a
    }
}
class Child : DifferenceClass {
    var childVar = "Hello"
}
struct DiffrenceStruct {
    var a: String
}
func exercise2Q7() {
    print("You need to add init method for initializer inside class but you do not need to add init inside of struct")
    let classVar = DifferenceClass(a: "Class")
    let structVar = DiffrenceStruct(a: "Structure")
    
    print("\nClass supports Inheritance while struct does not support inheritance")
    let childClass = Child(a: "Child Class")
    print("Accessing parent property through child class instance a = \(childClass.a)")
    
    print("\nClass is a refrence type and struct is a value type")
    
    let classVarCopy = classVar
    print("Class variable A = \(classVar.a)")
    print("Class variable Copy A = \(classVarCopy.a)")
    print("After classVarCopy.a = \"Class Var Copy\"")
    classVarCopy.a = "Class Var Copy"
    print("Class variable A = \(classVar.a)")
    print("Class variable Copy A = \(classVarCopy.a)")
    
    var structVarCopy = structVar
    print("\nStructure variable A = \(structVar.a)")
    print("Structure variable Copy A = \(structVarCopy.a)")
    print("After structVarCopy.a = \"Struct Var Copy\"")
    structVarCopy.a = "Struct Var Copy"
    print("Structure variable A = \(structVar.a)")
    print("Structure variable Copy A = \(structVarCopy.a)")
}






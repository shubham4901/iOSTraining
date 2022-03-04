//: [Previous](@previous)

import Foundation

//exercise1Q1()
//exercise1Q2()
//exercise1Q3()
//exercise1Q4()
//exercise1Q5()
//exercise1Q6()
//exercise1Q7()
//exercise1Q8()
//exercise1Q9()
//exercise1Q10()


class Exercise1Q1 {
    var question = "Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class."
    
    var questionNumber = 1.0
    
}
func exercise1Q1() {
    let obj = Exercise1Q1()
    print(obj.question)
    print(obj.questionNumber)
    obj.questionNumber = 1.1
    print(obj.questionNumber)
}

class Exercise1Q2 {
    var name: String
    var college: String?
    var department: String?
    
    init(name: String, college: String?) {
        self.name = name
        self.college = college
    }
    init(name: String, department: String?) {
        self.name = name
        self.department = department
    }
    
    func getStudent() {
        print("\(name) \n\(college ?? "N/A") \n\(department ?? "N/A")")
    }
}
func exercise1Q2() {
    let steve = Exercise1Q2(name: "Steve", college: "Oxford")
    let mark = Exercise1Q2(name: "Mark", department: "Computer")
    
    steve.getStudent()
    mark.getStudent()
}

class Exercise1Q3 {
    var question = "Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class."
    
    var questionNumber = 1.0
}
func exercise1Q3() {
    var obj = Exercise1Q3()
    print(obj.question)
    print(obj.questionNumber)
    obj.questionNumber = 1.1
    print(obj.questionNumber)
}

class Exercise1Q4 {
    func doSquare(number: Int) -> Int {
        print("Square of \(number) is \(number*number)")
        return number*number
    }
}
func exercise1Q4() {
    let obj = Exercise1Q4()
    obj.doSquare(number: 4)
}

class Exercise1Q5 {
    var temp = 0
}
class Child1 : Exercise1Q5 {
    var tempchild1 = 1
    
    func getParentVar() {
        print(temp)
    }
}
class Child2: Exercise1Q5 {
    var tempChild2 = 2
}
func exercise1Q5() {
    let obj1 = Child1()
    let obj2 = Child2()
    
    print(obj1.temp)
    print(obj2.temp)
    
    obj1.temp = 10
    obj2.temp = 20
    
    print(obj1.temp)
    print(obj2.temp)
}

class Exercise1Q6 {
    func printmessage() {
        print("Method of base Class")
    }
}
class Child3 : Exercise1Q6 {
    override func printmessage() {
        print("Method of Child CLass")
    }
}
func exercise1Q6() {
    let obj1 = Exercise1Q6()
    let obj2 = Child3()
    
    obj1.printmessage()
    obj2.printmessage()
}

class Exercise1Q7 {
    var value: Int
    
    init(value: Int) {
        self.value = value
    }
    
    func doPower(power: Int) -> Int {
        var powerResult = 1
        for _ in 1...power {
            powerResult *= value
        }
        print("\(value) raised to \(power) is \(powerResult)")
        return powerResult
    }
}
func exercise1Q7() {
    let obj = Exercise1Q7(value: 5)
    obj.doPower(power: 3)
}

class Vehicles {
    var topSpeed: Int
    var engineCC: Int
    
    init(topSpeed: Int, engineCC: Int) {
        self.topSpeed = topSpeed;
        self.engineCC = engineCC
    }
    
    func startVehicle() {
        print("Starting Vehicle")
    }
    
    final func applyAccelerator() {
        print("Speeding Up!!")
    }
    
    final func applyBrakes() {
        print("Speeding down!!")
    }
}

class Car : Vehicles {
    var carType: String
    var carName: String
    
    init(topSpeed: Int, engineCC: Int, carType: String, carName: String) {
        self.carName = carName
        self.carType = carType
        super.init(topSpeed: topSpeed, engineCC: engineCC)
    }
    
    override func startVehicle() {
        print("Starting car using key Self Start or Push Button")
    }
    
    func openWindows() {
        print("Opening Windows")
    }
}

class Bike : Vehicles {
    var bikeType: String
    var bikeName: String
    
    init(topSpeed: Int, engineCC: Int, bikeType: String, bikeName: String) {
        self.bikeName = bikeName
        self.bikeType = bikeType
        super.init(topSpeed: topSpeed, engineCC: engineCC)
    }
    
    override func startVehicle() {
        print("Starting bike by first turning on the key and pushing slef start or kick start")
    }
    
    func applyStand() {
        print("applying stand")
    }
    
    func applyStand(standType: String) {
        print("applying \(standType) stand")
    }
}


func exercise1Q8() {
    let apache = Bike(topSpeed: 157, engineCC: 198, bikeType: "Sports Naked Bike", bikeName: "TVS Apache rtr 200 4V")
    
    print("\(apache.bikeName) is \(apache.engineCC)CC \(apache.bikeType) which touches \(apache.topSpeed)KM/H top Speed")
    
    apache.startVehicle()
    apache.applyAccelerator()
    apache.applyBrakes()
    apache.applyStand()
    apache.applyStand(standType: "Side")
    
    
    let harrier = Car(topSpeed: 180, engineCC: 1956, carType: "SUV", carName: "Tata Harrier")
    
    print("\n\(harrier.carName) is \(harrier.engineCC)CC \(harrier.carType) which touches \(harrier.topSpeed)KM/H top Speed")
    
    harrier.startVehicle()
    harrier.applyAccelerator()
    harrier.openWindows()
    harrier.applyBrakes()
}

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func greet() {
        print("Hello \(name)")
    }
}
func exercise1Q9() {
    let obj = Person(name: "Joe")
    obj.greet()
}

class Example {
    var a: String = ""
}
func exercise1Q10() {
    let example1 = Example()
    example1.a = "Hello"
    let example2 = example1
    example2.a = "Hi"
    print(example1.a)
    print(example2.a)
    print("Because class is a refrence type")
}


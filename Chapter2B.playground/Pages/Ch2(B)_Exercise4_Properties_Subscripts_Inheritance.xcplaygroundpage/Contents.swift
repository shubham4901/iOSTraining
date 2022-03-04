//: [Previous](@previous)

import Foundation

//exercise4Q1()
//exercise4Q2()
//exercise4Q3()
//exercise4Q4()
//exercise4Q5()
//exercise4Q6()
//exercise4Q7()
//exercise4Q8()
//exercise4Q9()
//exercise4Q10()
//exercise4Q11()
//exercise4Q12()
//exercise4Q13()
//exercise4Q14()
//exercise4Q15()
//exercise4Q16()
//exercise4Q17()
//exercise4Q18()
//exercise4Q19()
//exercise4Q20()


class Demo {
    public private(set) var a: Int = 10
    private var str = "String"
    lazy var lazyString: String = {
        print("about to initalize the property")
        return "TestString"
    }()
    
    var demo1: String = "demo"
    var demo2 = 10
    
    func getStr() -> String {
        return str
    }
    
    static func typeMethodDemo() {
        print("Type method has been called")
    }
}
class ChildDemo : Demo {
    //    override func typeMethodDemo() {
    //
    //    }
}

class Circle {
    var radius: Double = 0 {
        willSet {
            print ("About to assign the new value \(newValue)")
        }
        didSet {
            if radius < 0 {
                radius = oldValue
            }
        }
    }
    var area: Double {
        get {
            return radius * radius * Double.pi
        }
        set(newValue) {
            radius = sqrt(newValue / Double.pi)
        }
    }
}

class Person {
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
}

class Human {
    var name : String
    var occupation : String
    var age : Int
    var gender : String
    
    init(name: String, occupation: String, age: Int, gender: String) {
        self.name = name
        self.occupation = occupation
        self.age = age
        self.gender = gender
    }
    
    subscript(humans:[Human], name: String) -> Human? {
        get {
            for human in humans {
                if human.name.elementsEqual(name) {
                    print("Name : \(human.name)")
                    print("Occupation : \(human.occupation)")
                    print("Age : \(human.age)")
                    print("Gender : \(human.gender)")
                    return human
                }
            }
            return nil
        }
    }
    
    func eat() {
        print("Human is eating")
    }
}
class Student : Human {
    var college : String
    init(name: String, occupation: String, age: Int, gender: String, college: String) {
        self.college = college
        super.init(name: name, occupation: occupation, age: age, gender: gender)
    }
    override func eat() {
        print("Student is eating")
    }
    func superEat() {
        super.eat()
    }
}
class Employee : Human {
    var company : String
    init(name: String, occupation: String, age: Int, gender: String, company: String) {
        self.company = company
        super.init(name: name, occupation: occupation, age: age, gender: gender)
    }
    override func eat() {
        print("employee is eating")
    }
    func superEat() {
        super.eat()
    }
}

struct MutatingStruct {
    var abc: String = "initial value"
    
    mutating func changeValue() {
        abc = "some other value"
    }
}

class DaysOfWeek {
    let days = ["Monday", "Tuesday", "Wednesday",
                "Thursday", "Friday", "Saturday", "Sunday"]
    subscript(index: Int) -> String {
        get {
            if index < 8 {
                return days[index-1]
            } else {
                return "Invalid Input"
            }
        }
    }
    
    func getDay(at number: Int) -> String {
        return self[number]
    }
}
class CharAtString {
    
    let str: String
    
    init(str: String) {
        self.str = str
    }
    subscript(ind: Int) -> Character{
        
        get {
            let array = Array(str)
            if ind <= str.count {
                return array[ind-1]
            }
            print("\(str) does not have \(ind) characters so, printing the last character at \(array.count)th position  ")
            return array[array.count - 1]
        }
    }
}

class RangeOfString {
    
    
    subscript (str: String,from: Int, to: Int) -> String {
        get {
            let startIndex = str.index(str.startIndex, offsetBy: from-1)
            let endIndex = str.index(str.startIndex, offsetBy: to)
            let range: Range<String.Index> = startIndex..<endIndex
            return String(str[range])
        }
    }
}

class RangeOfArray {
    
    let array: [Int]
    
    init(array: [Int]) {
        self.array = array
    }
    
    subscript (from: Int, to: Int) -> [Int] {
        get {
            return Array(array[from...to])
        }
    }
}
class DictionarySubScript {
    let dictArray = [
        [1:"Hello"],
        [2:"Hii"],
        [3:"Hola"],
        [4:"Namste"]
    ]
    
    subscript(key: Int) -> String {
        get {
            for i in dictArray {
                if let val = i.first(where: { $0.key == key})?.value {
                    return val
                }
            }
            return "Key Not Found"
        }
    }
}

class Song {
    var name: String
    var lable: String
    
    init(name: String, lable: String) {
        self.name = name
        self.lable = lable
    }
    
    func getSong() {
        print("\(name) by \(lable) Music Lable")
    }
}
class HipHop : Song {
    var singer: String
    var composer: String
    var feature: String
    
    init(name:String, lable: String, singer: String, composer: String, feature: String) {
        self.singer = singer
        self.composer = composer
        self.feature = feature
        super.init(name: name, lable: lable)
    }
    
    override func getSong() {
        print("\(name) by \(singer) rapper featuring \(feature) from \(composer) in \(lable) music Lable.")
    }
}
class Classical : Song {
    var singer: String
    var composer: String
    
    init(name:String, lable: String, singer: String, composer: String) {
        self.singer = singer
        self.composer = composer
        super.init(name: name, lable: lable)
    }
    
    override func getSong() {
        print("\(name) by \(singer) singer from \(composer) in \(lable) music Lable.")
    }
}

func exercise4Q1() {
    let demo = Demo()
    print(demo.a)
    //demo.a = 10
}

func exercise4Q2() {
    let circle = Circle();
    circle.radius = 5;
    print(circle.radius)
    circle.area = 314.1592653589793
    print("Radius : \(circle.radius)")
    print("Area : \(circle.area)")
}

func exercise4Q3() {
    var changableVar = 10;
    let constantVar = "String"
    print(changableVar)
    changableVar = 20
    print(changableVar)
    //constantVar = "STR"
    print(constantVar)
}

func exercise4Q4() {
    let demo = Demo()
    print(demo.getStr())
}

func exercise4Q5() {
    let personsArray = [Person(id: 1001, name: "Steve"),Person(id: 1002, name: "Mark"),Person(id: 1003, name: "Jeff")]
    print("ID\t\tName")
    for i in personsArray {
        print("\(i.id)\t\(i.name)")
    }
}

func exercise4Q6() {
    let circle = Circle();
    circle.radius = 5;
    print(circle.radius)
    circle.area = 314.1592653589793
    print("Radius : \(circle.radius)")
    print("Area : \(circle.area)")
}
func exercise4Q7() {
    let demo = Demo()
    print(demo.lazyString)
}
func exercise4Q8() {
    let student = Student(name: "Shubham", occupation: "Trainee/Student", age: 21, gender: "Male", college: "RK University")
    print("Name : \(student.name)")
    print("Occupation : \(student.occupation)")
    print("Age : \(student.age)")
    print("Gender : \(student.gender)")
    print("College : \(student.college)")
    
    let employee = Employee(name: "Ramraj", occupation: "Sr. Developer", age: 28, gender: "Male", company: "Simform Solutions")
    print("\nName : \(employee.name)")
    print("Occupation : \(employee.occupation)")
    print("Age : \(employee.age)")
    print("Gender : \(employee.gender)")
    print("Company : \(employee.company)")
}
func exercise4Q9() {
    var mutatingStruct =  MutatingStruct()
    print(mutatingStruct.abc)
    mutatingStruct.changeValue()
    print(mutatingStruct.abc)
}
func exercise4Q10() {
    let student = Student(name: "Shubham", occupation: "Trainee/Student", age: 21, gender: "Male", college: "RK University")
    student.eat()
    student.superEat()
    
    let employee = Employee(name: "Ramraj", occupation: "Sr. Developer", age: 28, gender: "Male", company: "Simform Solutions")
    employee.eat()
    employee.superEat()
}
func exercise4Q11() {
    Demo.typeMethodDemo()
}
func exercise4Q12() {
    print("Can not override static methods becuase Static methods binds relation during Compile time and class methods binds relation during run time")
}
func exercise4Q13() {
    let days = DaysOfWeek()
    days.getDay(at:7)
}
func exercise4Q14() {
    let charAt = CharAtString(str: "Simform")
    print(charAt[1])
    print(charAt[2])
    print(charAt[3])
    print(charAt[4])
    print(charAt[5])
    print(charAt[6])
    print(charAt[7])
    print(charAt[80])
}
func exercise4Q15() {
    let rangeOfString = RangeOfString()
    let str = "Simform Solutions"
    rangeOfString[str,9,12]
}
func exercise4Q16() {
    let hello = RangeOfArray(array: [12,14,1,7,3,7,4,67,43,67,43,783,86457,36])
    print(hello[3,10])
}
func exercise4Q17() {
    let dict = DictionarySubScript()
    print(dict[2])
}
func exercise4Q18() {
    let humans = [Human(name: "Shubham", occupation: "Student", age: 21, gender: "Male"),Human(name: "RamRaj", occupation: "Developer", age: 28, gender: "Male"),Human(name: "Roma", occupation: "Trainee", age: 22, gender: "Female")]
    
    let human = Human(name: "Raj", occupation: "Student", age: 21, gender: "Male")
    human[humans,"Shubham"]
}
func exercise4Q19() {
    let hiphop = HipHop(name: "Pop Pop", lable: "Owned", singer: "Snoop Dogg", composer: "D Beatz", feature: "Da Baby")
    hiphop.getSong()
    
    let classical = Classical(name: "A thousand Years", lable: "The Extras", singer: "The Piano Guys", composer: "The Piano Guys")
    classical.getSong()
    
    let song = Song(name: "Take Diss", lable: "Kalamkar")
    song.getSong()
    
}

func exercise4Q20() {
    let demo = Demo()
    print(demo.demo1)
    demo.demo1 = "String"
    print(demo.demo1)
    print(demo.demo2)
}


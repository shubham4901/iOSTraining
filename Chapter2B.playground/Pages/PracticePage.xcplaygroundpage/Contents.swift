//: [Previous](@previous)

import Foundation

//SET Example
//set()

//Class Example
//accessClass()

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

//enum with switch case
//shareImage(on: .twitter)
//shareImage(on: .instagram)

//enum with raw value
//getCeo(of: .facebook)
//getCeo(of: .linkedIn)

//enum with caseIterable
//getAllPlatforms()

//enum with associated value
//getSponsorshipEligibility(for: .twitter(followers: 10001))

//struct
//underStandClassVsStruct()

//Properties - willSet/didSet/get/set
//propertiesExample()

//Lazy property
//lazyProperty()

//Basic Properties - static/Public/Private/Public Private(Set)
//basicProperties()

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

//Inheritance - extending, overriding, final, accessing members etc.
//inheritance()

//inheritance With Final
//inheritWithFinal()

//Optional Chaining
//optionalChaining()

//error Handling
//errorHandling()

//error handling with optional
//errorToOptional()

//Type casting - Type Checking
//checkType()

//Type Casting
//typeCasting()

//Nested Types
//nestedTypes()

//Extensions
//extensions()

//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------//

//Protocols
//protocolExample()

//Delegates
//delegatesExample()

//Initializer, Deinitializer, Override
//initDeinitOverride()

//Refrence Counting
//refrenceCounting()

//Subscripts
//subscriptsExample()

func set() {
    
    var setCollection1: Set<Int> = [6,2,8,1,7,12,67,23,8]
    var setCollection2: Set<Int> = [62,6,2,8,1,2,5,0,9]
    
    print("Set 1 is \(setCollection1) and count is \(setCollection1.count)")
    print("Set 2 is \(setCollection2) and count is \(setCollection2.count)")
    
    setCollection1.insert(99)
    setCollection2.insert(55)
    
    print("\nSet 1 after insertion is \(setCollection1) and count is \(setCollection1.count)")
    print("Set 2 after insertion is \(setCollection2) and count is \(setCollection2.count)")
    
    setCollection1.remove(12)
    setCollection2.remove(5)
    
    print("\nSet 1 after removal is \(setCollection1) and count is \(setCollection1.count)")
    print("Set 2 after removal is \(setCollection2) and count is \(setCollection2.count)")
    
    
    print("\nSet 1 is \(setCollection1) and it contains 6 : \(setCollection1.contains(6))")
    print("Set 2 is \(setCollection2) and it contains 66 : \(setCollection1.contains(66))")
    
    
    let unionSet = setCollection1.union(setCollection2)
    print("\nUnion set of Set1 and Set2 is \(unionSet) and count is \(unionSet.count)")
    
    
    let intersectionSet = setCollection1.intersection(setCollection2)
    print("\nIntersection set of set1 and set2 or common elements in set 1 and set2 is \(intersectionSet) and count is \(intersectionSet.count)")
    
    
    let subtractSet = setCollection1.subtracting(setCollection2)
    print("\nSubtracting set of set1 and set2 or elements without common values of set1 and set2 is \(subtractSet) and count is \(subtractSet.count)")
}

class Employee {
    var name = ""
    var salary = 0
    var role = ""
    
    func doWork() {
        print("Hi my name is \(name) and I'm doing work and my package is \(salary*12)$ per anum.")
        salary += 1
    }
}

func accessClass() {
    
    let emp1:Employee = Employee()
    emp1.name = "Tom"
    emp1.role = "Art Director"
    emp1.salary = 1000
    emp1.doWork()
    
    let emp2:Employee = Employee()
    emp2.name = "Steve"
    emp2.role = "CEO"
    emp2.salary = 1000000
    emp2.doWork()
}


enum SocialPlatform: String, CaseIterable {
    case twitter    = "Parag Agrawal"
    case facebook   = "Mark Zuckerberg"
    case instagram  = "Kevin Systron"
    case linkedIn   = "Ryan Roslansky"
}
func shareImage(on platform: SocialPlatform) {
    switch platform {
    case .twitter:
        print("Image Sharing proccessing on Twitter")
    case .facebook:
        print("Image Sharing proccessing on Facebook")
    case .instagram:
        print("Image Sharing proccessing on Instagram")
    case .linkedIn:
        print("Image Sharing proccessing on LinkedIn")
    }
}


func getCeo(of platform: SocialPlatform) -> String {
    print("\n\(platform.rawValue) is CEO of \(platform)")
    return platform.rawValue
}

func getAllPlatforms() {
    print(SocialPlatform.allCases.count)
    for i in SocialPlatform.allCases {
        print("\(i)'s CEO is \(i.rawValue)")
    }
}


enum SocialMediaPlatform {
    case twitter(followers: Int)
    case youtube(subscribers: Int)
    case instagram(followers: Int)
    case linkedIn(connections: Int)
    case facebook(friends: Int)
}
func getSponsorshipEligibility(for platform: SocialMediaPlatform) {
    switch platform {
    case .twitter(let followers) where followers > 10_000:
        print("Eligible for sponsored Tweet.")
    case .youtube(let subscribers) where subscribers > 25_000:
        print("Eligible for sponsored video.")
    case .instagram(let followers) where followers > 10_000:
        print("Eligible for sponsored Post.")
    case .linkedIn(let connections) where connections > 1000:
        print("Eligible for sponsored Post.")
    case .facebook(let friends) where friends > 5000:
        print("Eligible for sponsored Post and Status Update.")
    case .instagram, .linkedIn, .twitter, .youtube, .facebook:
        print("Not eligible for sponsorship")
    }
}

struct Developer {
    var name: String
    var jobTitle: String
    var yearsExp: Int
}

class DeveloperClass {
    var name: String
    var jobTitle: String
    var yearsExp: Int
    
    init(name: String, jobTitle: String, yearsExp: Int) {
        self.name = name
        self.jobTitle = jobTitle
        self.yearsExp = yearsExp
    }
}

func underStandClassVsStruct() {
    let sean = Developer(name: "Sean", jobTitle: "i0S Engineer", yearsExp: 5)
    var joe  = sean
    joe.name = "Joe"
    print(sean.name)
    print(joe.name)
    
    
    let seanClass = DeveloperClass(name: "Sean", jobTitle: "i0S Engineer", yearsExp: 5)
    let joeClass  = seanClass
    joeClass.name = "Joe"
    print(seanClass.name)
    print(joeClass.name)
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



func propertiesExample() {
    
    
    let circle = Circle();
    
    circle.radius = 5;
    print(circle.radius)
    circle.area = 314.1592653589793
    print("Radius : \(circle.radius)")
    print("Area : \(circle.area)")
    
}



class TestClass {
    
    lazy var testString: String = {
        print("about to initalize the property")
        return "TestString"
    }()
    
    var testString2 = "testString2"
}


func lazyProperty() {
    let testClass = TestClass()
    print(testClass.testString2)
    print (testClass.testString)
    print(testClass.testString)
}


class PropertyClass {
    
    static let topic = "Properties"
    public let subTopic = "Public Property"
    private let subTopic2 = "Private Property"
    
    public private(set) var setVar = 10
    
    func getPrivate() -> String {
        print("Private var : \(subTopic2)")
        return subTopic2
    }
    
}

func basicProperties() {
    
    print("Static Var : \(PropertyClass.topic)") //Only accessible directly usign class name
    
    let learn = PropertyClass()
    
    //print("Static Var : \(learn.topic)") //Can't access through instance
    
    print("Public var : \(learn.subTopic)") //can only access through instance and can be accessed within inside or outside class
    
    //print("Private var : \(learn.subTopic2)") //can't be accessed outside the class to access you have to use getter and setter methods given below
    
    learn.getPrivate() // getting private variable using getter method
    
    print("Read Only Variable : \(learn.setVar)") //Only accessible for reading or getting purpose / Can't change the value outside the class
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


func inheritance() {
    
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

func optionalChaining() {
    
    var name: String?
    
    print("Optional when nil : ",name?.uppercased() ?? "N/A")
    
    name = "Steve"
    
    print("Optional when not nil : \(name?.uppercased() ?? "N/A")")
    print("Optional when not nil : \(name!.uppercased())")
    
}



enum BikeError: Error {
    
    case insufficientFuelQuantity(neededFuelQuantity: Int, currentFuelQuamtity: Int)
    case insufficientAge(neededAge: Int, currentAge: Int)
    case helmetNotFoundException(isWearingHelmet: Bool)
}

struct TwoWheel {
    
    var currentAge: Int
    var currentPetrolQuantity: Int
    var isWearingHelmet: Bool
    
    func rideBike() throws -> Bool {
        
        if currentAge < 18 {
            throw BikeError.insufficientAge(neededAge: 18, currentAge: currentAge)
        }
        if currentPetrolQuantity < 3 {
            throw BikeError.insufficientFuelQuantity(neededFuelQuantity: 3, currentFuelQuamtity: currentPetrolQuantity)
        }
        if !isWearingHelmet {
            throw BikeError.helmetNotFoundException(isWearingHelmet: isWearingHelmet)
        }
        print("\nLet's Go On a ride")
        return true
    }
    
}


func errorHandling() {
    
    var bike1 = TwoWheel(currentAge: 17, currentPetrolQuantity: 7, isWearingHelmet: true)
    callBikeRide(bike: bike1)
    
    bike1.currentAge = 21
    bike1.currentPetrolQuantity = 2
    callBikeRide(bike: bike1)
    
    bike1.currentPetrolQuantity = 7
    bike1.isWearingHelmet = false
    callBikeRide(bike: bike1)
    
    bike1.isWearingHelmet = true
    callBikeRide(bike: bike1)
    
}

func callBikeRide(bike: TwoWheel) {
    do{
        try bike.rideBike()
    } catch BikeError.insufficientAge(let neededAge,let currentAge) {
        print("\nError 1003 :( \nMinimum age to ride bike is \(neededAge) and your age is not sufficient because it is \(currentAge)")
    } catch BikeError.insufficientFuelQuantity(let neededFuelQuantity, let currentFuelQuamtity) {
        print("\nError 1004 :( \nMinimum fuel quantity to ride bike is \(neededFuelQuantity) and your current fuel quantity is not sufficient because it is \(currentFuelQuamtity)")
    } catch BikeError.helmetNotFoundException(_) {
        print("\nError 1005 :( \nHelmet not Found. Helmet is issue of safety and you not wearing it.")
    } catch {
        print("Error Occured")
    }
}


enum DivisionException: Error {
    case ReminderRemainException(reminder: Int)
}

func getDivision(num1: Int, num2: Int) throws -> Int {
    
    if num1%num2 != 0 {
        throw DivisionException.ReminderRemainException(reminder: num1%num2)
    }
    return num1/num2
}

func errorToOptional() {
    
    let result1 = try? getDivision(num1: 10, num2: 3)
    print(result1 ?? "N/A")
    
    let result2 = try? getDivision(num1: 10, num2: 2)
    print(result2 ?? "N/A")
}

/*func checkType() {
 
 let temp: Int = 10
 if temp is Int {
 print("Temp is Integer Variable")
 }
 
 let temp2: String = "10"
 if temp2 is Int {
 print("Temp2 is integer variable")
 } else {
 print("Temp2 is not integer variable")
 }
 }*/

func typeCasting() {
    print(10 as Double)
}





struct Fruit {
    
    enum RedFruit:Character {
        case apple = "🍎", strawberry = "🍓", watermelon = "🍉"
        enum Size:Int {
            case SMALL = 1, MEDIUM = 2, BIG = 3
        }
    }
    
    var myFruit: RedFruit?
    var myFruitSize: RedFruit.Size?
    var description: String {
        if let val = myFruit {
            if let val2 = myFruitSize {
                return "Fruit Name : \(val)\nSize : \(val2)\nLooks Like : \(val.rawValue) "
            } else {
                return "N/A"
            }
        }
        return "N/A"
    }
}
func nestedTypes() {
    var fruit = Fruit()
    
    fruit.myFruit = Fruit.RedFruit.apple
    fruit.myFruitSize = Fruit.RedFruit.Size.MEDIUM
    print(fruit.description)
}

var array = Array("🥚🐓");
print(array.sorted())


protocol College {
    
    func getCollege()
    
}
class Student {
    
    var name: String
    var semester: Int
    var course: String
    var college: String
    
    init(name: String, semester: Int, course: String, college: String) {
        self.name = name
        self.course = course
        self.semester = semester
        self.college = college
    }
    func getStudent() {
        print("\nName: \(name)\nCourse : \(course)\nSemester : \(semester)\ncollege : \(college)")
    }
}

func extensions() {
    let student1 = Student(name: "Shubham", semester: 7, course: "B.Tech in Computer Engineering",college: "RK University")
    student1.getStudent()
    
    student1.updateStudent(name: "Shubham", semester: student1.semester+1, course: "B.Tech in Computer Engineering",college: "RK University")
    student1.getStudent()
}

extension Student {
    
    func updateStudent(name: String, semester: Int, course: String, college: String) {
        self.name = name
        self.course = course
        self.semester = semester
        self.college = college
    }
}

extension Student: College {
    func getCollege() {
        print("College : \(college)")
    }
}


protocol CameraFunctions {
    func openCamera()
    func clickPicture()
    func shootVideo()
}
protocol ApplicationFunctions {
    func installApplication()
    func killApplication()
    func uninstallApplication()
    func forceStopApplication()
}
protocol CallFunctions {
    
    func makeCall()
    func recordCall()
    func endCall()
    func getContact()
}
protocol MobilePhone : CallFunctions, ApplicationFunctions, CameraFunctions{
    func switchOn()
    func switchOff()
}

class Iphone13ProMax: MobilePhone {
    func switchOn() {
        print("Phone Switching On")
    }
    
    func switchOff() {
        print("Phone Switching Off")
    }
    
    func makeCall() {
        print("Call intializing")
    }
    
    func recordCall() {
        print("Recording call")
    }
    
    func endCall() {
        print("Ending Call")
    }
    
    func getContact() {
        print("Getting Contact")
    }
    
    func installApplication() {
        print("Installing Application")
    }
    
    func uninstallApplication() {
        print("Unistaliing Application")
    }
    
    func forceStopApplication() {
        print("Force stopping Application")
    }
    
    func openCamera() {
        print("Opening Camera")
    }
    
    func clickPicture() {
        print("Clicking the Picture")
    }
    
    func shootVideo() {
        print("Shooting Video")
    }
    func killApplication() {
        print("Killing Application")
    }
}


func protocolExample() {
    
    let iphone = Iphone13ProMax()
    
    iphone.switchOn()
    iphone.installApplication()
    iphone.getContact()
    iphone.makeCall()
    iphone.recordCall()
    iphone.endCall()
    iphone.forceStopApplication()
    iphone.killApplication()
    iphone.openCamera()
    iphone.clickPicture()
    iphone.shootVideo()
    iphone.killApplication()
    iphone.uninstallApplication()
    iphone.switchOff()
}



protocol AdditionResultDelegate
{
    func didFinishAddingTwoNumbers(result: Int)
}

class Developer1
{
    var managerReference: AdditionResultDelegate?
    
    func developerWillAddTwoNumber(a: Int, b: Int)
    {
        let result = a + b
        managerReference?.didFinishAddingTwoNumbers(result: result)
    }
}

class Manager : AdditionResultDelegate
{
    var developer: Developer1?
    
    init(_developer: Developer1) {
        developer = _developer
        developer?.managerReference = self
    }
    
    func didFinishAddingTwoNumbers(result: Int)
    {
        print("result of addition = \(result)")
    }
    
    func addTwoNumber(x: Int, y: Int)
    {
        developer?.developerWillAddTwoNumber(a: x, b: y)
    }
}

func delegatesExample() {
    let objManager = Manager(_developer: Developer1())
    objManager.addTwoNumber(x: 10, y: 10)
}


class Temp {
    
    var tempVar: String
    var tempVar2: Int
    
    init(tempVar: String, tempVar2: Int) {
        print("Initializer called")
        self.tempVar = tempVar
        self.tempVar2 = tempVar2
    }
    
    deinit{
        print("Deintialized")
    }
    
    func tempMethod() {
        print("Method of Parent Class Temp")
    }
    
}

class TempChild : Temp {
    override func tempMethod() {
        print("Method of Child Class TempChild ")
    }
}



func initDeinitOverride() {
    
    var tempChild : TempChild? = TempChild(tempVar: "Hello2", tempVar2: 20)
    var temp: Temp? = Temp(tempVar: "Hello", tempVar2: 10)
    
    
    tempChild?.tempMethod()
    temp?.tempMethod()
    
    tempChild = nil
    temp = nil
    
}


class Person {
    let name: String
    var macbook: MacBook?
    init(name: String, macbook: MacBook?) {
        self.name = name
        self.macbook = macbook
    }
    deinit {
        print("\(name) is being deinitialized")
    }
}
class MacBook {
    let name: String
    weak var owner: Person?
    init(name: String, owner: Person?) {
        self.name = name
        self.owner = owner
    }
    deinit {
        print("Macbook named \(name) is being deinitialized")
    }
}

func refrenceCounting() {
    
    var sean: Person? = Person (name: "Sean", macbook: nil)
    let matilda: MacBook? = MacBook (name: "Matilda", owner: nil)
    sean?.macbook = matilda
    matilda?.owner = sean
    sean = nil
    print(matilda?.owner ?? "N/A")
}




struct Classroom {
    var students = [
        ["Eric", "Peter", "Quagmire", "Randy"],
        ["Messi", "Ronaldo", "Ronaldiho", "Xavi"],
        ["Trey", "Usher", "Nicki", "Alicia"],
        [ "Hark", "Bill", "Elon", "Jeff"]
    ]
    subscript(row: Int, col: Int) -> String {
        get {
            return students[row][col]
        }
        set {
            students[row][col] = newValue
        }
    }
}

func subscriptsExample() {
    var clas = Classroom( )
    print(clas[1, 0])
    clas[0, 0] = "Eric Cartman"
    print(clas[0, 0])
}


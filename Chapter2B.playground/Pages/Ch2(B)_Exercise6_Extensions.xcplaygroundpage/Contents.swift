//: [Previous](@previous)

import Foundation

//exercise6Q1()
//exercise6Q2()
//exercise6Q3()
//exercise6Q4()

extension String {
    mutating func addCharAtFifthPosition(char: Character) {
        let charIndex = self.index(self.startIndex, offsetBy: 4)
        if self.count >= 5 {
            self.insert(char, at: charIndex)
        }
    }
    
    mutating func replaceChar(from replacingChar: Character,to newChar: Character) {
        if self.contains(replacingChar) {
            self = String(self.map {
                $0 == replacingChar ? newChar : $0
            })
        }
    }
    
    mutating func removeWhiteSpaces() {
        self =  self.filter({ $0 != " " })
    }
    
    mutating func getWordCount() -> Int {
        let components = self.components(separatedBy: .whitespaces)
        let words = components.filter { !$0.isEmpty }
        return words.count
    }
}

func exercise6Q1() {
    var str = "Simfrm"
    print(str)
    str.addCharAtFifthPosition(char: "o")
    print(str)
}
func exercise6Q2() {
    var str = "Simgorm"
    print(str)
    str.replaceChar(from: "g", to: "f")
    print(str)
}
func exercise6Q3() {
    var str = "Simform Solutions"
    print(str)
    str.removeWhiteSpaces()
    print(str)
}
func exercise6Q4() {
    var str = "Simform Solutions"
    print(str)
    print(str.getWordCount())
}

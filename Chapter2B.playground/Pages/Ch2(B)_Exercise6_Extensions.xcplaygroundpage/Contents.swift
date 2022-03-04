//: [Previous](@previous)

import Foundation

extension String {
    mutating func addCharAtFifthPosition(char: Character) {
        let charIndex = self.index(self.startIndex, offsetBy: 5)
        if self.count >= 5 {
            self.insert(char, at: charIndex)
        }
    }
    
    mutating func replaceChar(from replacingChar: Character,to newChar: Character) {
        if self.contains(where: String.Element(replacingChar)) {
            
        }
    }
}



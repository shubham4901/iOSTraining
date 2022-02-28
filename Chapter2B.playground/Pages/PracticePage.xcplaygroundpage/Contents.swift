//: [Previous](@previous)

import Foundation



set()

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
    setCollection1.remove(5)
    
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




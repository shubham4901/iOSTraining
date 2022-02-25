//: [Previous](@previous)

import Foundation

//Chapter 2 - Exercise 5 - A - Print the powers of 2 that are less than or equal to N
printPowerOfTwo(num: 100)


//Chapter 2 - Exercise 5 - B - Given an integer N draw a square of N x N asterisks
makeSquare(num: 10)


//Chapter 2 - Exercise 5 - C - Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.
makeTriangle(num:4)


//Chapter 2 - Exercise 5 - D - Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks.
makePyramid(num:4)


//Chapter 2 - Exercise 5 - E - You are given a number. Print "prime" if the number is a prime and "not prime" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).
isPrime(num: 17)





func printPowerOfTwo(num: Int) {
    
    print("\n\nChapter 2 - Exercise 5 - A - Print the powers of 2 that are less than or equal to \(num) \n")
    var j=1;
    for _ in 1...num {
        if(j*2 > num) { return }
        else {
            j *= 2;
            print(j)
        }
    }
}


func makeSquare(num: Int) {
    
    print("\n\nChapter 2 - Exercise 5 - B - Given an integer \(num) draw a square of \(num) x \(num) asterisks.\n");
    for _ in 1...num {
        
        for _ in 1...num {
            
            print("*",terminator: " ")
            
        }
        print("")
    }
    
}


func makeTriangle(num: Int) {
    
    print("\n\nChapter 2 - Exercise 5 - C - Given an integer \(num) draw a triangle of asterisks. The triangle should have \(num) lines, the i-th line should have i asterisks on it.\n");
    for i in 1...num {
        
        for _ in 1...i{
            
            print("*",terminator: " ")
            
        }
        print("")
    }
    
}


func makePyramid(num: Int) {
    
    print("\n\nChapter 2 - Exercise 5 - D - Given an integer \(num) draw a pyramid of asterisks. The pyramid should have \(num) lines. On the i-th line there should be \(num)-i spaces followed by i*2-1 asterisks.\n")
    var k = 0
    for i in 1...num {
        k=0
        for j in stride(from: 1, through: num-i, by: 1) {
            
            print(" ",terminator: "")
            
        }
        while(k != (i*2)-1) {
            
            print("*",terminator: "")
            k += 1;
            
        }
        print("")
    }
    
}


func isPrime(num: Int) -> Bool {
    print("\n\nChapter 2 - Exercise 5 - E - You are given a number. Print \"prime\" if the number is a prime and \"not prime\" otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).\n")
    var divisables: [Int] = []
    var message = "\(num) is divisable by "
    for i in 1...num {
        if num % i == 0 {
            divisables.append(i);
        }
    }
    for i in divisables {
        message = message + "(\(i)) ";
    }
    
    if divisables.count > 2 {
        message = message + ", So it is not a Prime Number"
        print(message)
        return false
    } else {
        message = message + ", So it is a Prime Number"
        print(message)
        return true
    }
}

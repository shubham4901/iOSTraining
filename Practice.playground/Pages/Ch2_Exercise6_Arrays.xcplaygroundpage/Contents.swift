
var array = [3,567,46,3,67,3,56,3,56,3,56,3,785567,6344563,3]
var listOfNumbers = [1, 2, 3, 10, 100]
var divisors = [2, 5]


//Chapter 2 - Exercise 6 - A - Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.
checkSameElementCorners(array)

//Chapter 2 - Exercise 6 - B - Write a Swift program to create a new array with double the lenght of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.
createArrayWithZeros(array: array)

//Chapter 2 - Exercise 6 - C - Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array
newFirstTwoElementArray(array: array)

//Chapter 2 - Exercise 6 - E - Write a Swift program to take one array and sort it in descending order.
descendingArray(array: array)

//Chapter 2 - Excercise 6 - F - Print all the numbers from listOfNumbers that are divisible by at least one number from divisors
divisorsCheck(array: listOfNumbers, divisors: divisors)


func checkSameElementCorners(_ array: [Int]) -> Bool {
    
    print("Chapter 2 - Exercise 6 - A - Write a Swift program to check whether the first element and the last element of a given array of integers are equal. The array length must be 1 or more.\n")
    if array.count < 1 {
        
        print("Array is empty.")
        return false
    }
    if(array[0]==array[array.count-1]) {
        print("First and Last element is same and is \(array[0])")
        return true
    }
    print("First and Last element is not same because the First element is \(array[0]) and the Last element is \(array[array.count-1])")
    return false
}


func createArrayWithZeros(array: [Int]) -> [Int] {
    
    print("\n\nChapter 2 - Excersice 6 - B - Write a Swift program to create a new array with double the lenght of a given array of integers and its last element is the same as the given array. The given array will be length 1 or more. By default, a new integer array contains all 0's.\n")
    
    var newArray: [Int] = [];
    if array.isEmpty {
        print("Array is Empty")
        return newArray
    } else {
        newArray = Array(repeating: 0, count: (array.count*2))
        newArray[newArray.count-1] = array[array.count-1]
        print("Here is the new Created array : \n\(newArray)")
        return newArray;
        }
}



func newFirstTwoElementArray(array: [Int]) -> [Int] {
    
    print("\n\nChapter 2 - Excercise 6 - C - Write a Swift program to create a new array, taking first two elements from a given array of integers. If the length of the given array is less than 2 use the single element of the given array. \n")
    var newArray: [Int] = []
    if array.isEmpty {
        
        print("Array is Empty.")
        return newArray
        
    } else if( array.count == 1 ) {
        
        print(array)
        return array
        
    } else {
        
        newArray.append(array[0])
        newArray.append(array[1])
        print("Here is the new Created array : \n\(newArray)")
        return newArray
    }
    
}




func descendingArray(array: [Int]) -> [Int] {
    
    print("\n\nChapter 2 - Excercise 6 - E - Write a Swift program to take one array and sort it in descending order.\n")
    
    var temp = 0;
    var array2 = array;
    var array3  = array
    for i in stride(from: 0, to: array2.count, by: 1){
        
        for j in stride(from: i, to:array2.count ,by: 1) { 
            
            if(array2[i] < array2[j]) {
                
                temp = array2[i];
                array2[i] = array2[j];
                array2[j] = temp;
                
            }
            
        }
        
    }
    array3.sort();
    array3.reverse();
    print("Here is the descending ordered array with loop: \n\(array2) and it is with functions \(array3)")
    return array2
}


func divisorsCheck(array: [Int], divisors: [Int]) -> [Int] {
    
    print("\n\nChapter 2 - Excercise 6 - F - Print all the numbers from \(array) that are divisible by at least one number from \(divisors)\n")
    
    var newArray: [Int] = [];
    for i in array {
        for j in divisors {
            if(i%j == 0) {
                if(!newArray.contains(i)) {
                    newArray.append(i)
                }
            }
        }
    }
    print("Here is the elements of \(array) which are divisible by either of \(divisors) : \n\(newArray)")
    return newArray;
}




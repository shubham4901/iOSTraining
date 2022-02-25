//: [Previous](@previous)

import Foundation

let people: [[String:String]] = [

[

"lastName": "Newton",
    
"firstName": "Calvin"

],

[

"firstName": "Garry",

"lastName": "Mckenzie"

],

[

"firstName": "Leah",

"lastName": "Rivera"

],

[

"firstName": "Sonja",

"lastName": "Moreno"

],

[

"firstName": "Noel",

"lastName": "Bowen"

]

]

var encodedMessage = "uijt nfttbhf jt ibse up sfbe"


//nChapter 2 - Excersice 7 - A - You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code[a] = z and code[b] = x the encoded version if ababa will be zxzxz. You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string
//decodeMessage(encodedMessage: encodedMessage)


//Chapter 2 - Excersice 7 - B - You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys firstName and lastName. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.
//getFirstNames()

//Chapter 2 - Excersice 7 - C - You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys firstName and lastName. Create an array of strings called fullNames that contains the values for firstName and lastName from the dictionary separated by a space.
//getFullNames()

func decodeMessage(encodedMessage: String) {
    
    
    let keys = [

    "a" : "b",

    "b" : "c",

    "c" : "d",

    "d" : "e",

    "e" : "f",

    "f" : "g",

    "g" : "h",

    "h" : "i",

    "i" : "j",

    "j" : "k",

    "k" : "l",

    "l" : "m",

    "m" : "n",

    "n" : "o",

    "o" : "p",

    "p" : "q",

    "q" : "r",

    "r" : "s",

    "s" : "t",

    "t" : "u",

    "u" : "v",

    "v" : "w",

    "w" : "x",

    "x" : "y",

    "y" : "z",

    "z" : "a"

    ]
    
    
    print("\n\nChapter 2 - Excersice 7 - A - You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code[a] = z and code[b] = x the encoded version if ababa will be zxzxz. You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string\n")
    
    /*var str = "";
    for i in encodedMessage {
        for (key,value) in keys {
            if value == String(i) {
                str += key;
            }
        }
        if i == " "  {
                str += " "
            }
    }
    print(str)*/
    for i in encodedMessage {
        if let key = keys.first(where: { $0.value == String(i)})?.key {
            print(key,terminator: "")
        }
    }
}


func getFirstNames() {
    
    
    
    var fNames: [String] = []
    
    print("\n\nChapter 2 - Excersice 7 - B - You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys firstName and lastName. Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary. \n")
    
    for i in people {
        
        for (key,value) in i {
            
            if(key == "firstName") {
            fNames.append(value)
            }
            
        }
        
    }
    print(fNames)
}


func getFullNames() {
    
    
    
    var fullNames: [String] = []
    var name = ""
    var tempName = "";
    print("\n\nChapter 2 - Excersice 7 - C - You are given an array of dictionaries. Each dictionary in the array contains exactly 2 keys firstName and lastName. Create an array of strings called fullNames that contains the values for firstName and lastName from the dictionary separated by a space. \n")
    
    for i in people {
        //print(i)
        name = ""
        for (key,value) in i {
            
            if(key=="firstName") {
                name += value;
            } else if(key == "lastName" && !name.isEmpty) {
                name += " "+value
            } else if(key == "lastName" && name.isEmpty) {
                tempName = value
            }
        }
        if(!tempName.isEmpty) {
            name += " "+tempName
            tempName = ""
        }
        fullNames.append(name)
    }
    print(fullNames)
}

//findWeakestStudent()

func findWeakestStudent() {
    
    let people: [[String:Any]] = [

    [

    "firstName": "Calvin",

    "lastName": "Newton",

    "score": 13

    ],

    [

    "firstName": "Garry",

    "lastName": "Mckenzie",

    "score": 12

    ],

    [

    "firstName": "Leah",

    "lastName": "Rivera",

    "score": 10

    ],

    [

    "firstName": "Sonja",

    "lastName": "Moreno",

    "score": 3

    ],

    [

    "firstName": "Noel",

    "lastName": "Bowen",

    "score": 16

    ]

    ]
    var weakest: Int = 200
    var index = 0
    
    print("\n\nChapter 2 - Excersice 7 - D - You are given an array of dictionaries. Each dictionary in the array describes the score of a person. Find the person with the lowest score and print his full name.");
    
    for i in stride(from: 0, to: people.count, by: 1){
        
        for (key,value) in people[i] {
            
            if key == "score" {
                
                if(weakest > value as! Int) {
                    weakest = value as! Int
                    index = i
                }
            }
        }
    }
    let weakestStudent = people[index]
    
    print("\(weakestStudent["firstName"] ?? "") \(weakestStudent["lastName"] ?? "") with \(weakest) marks")
    
}

getLeaderBoard()

func getLeaderBoard() {
    
    let people: [[String:Any]] = [

    [

    "firstName": "Calvin",

    "lastName": "Newton",

    "score": 13

    ],

    [

    "firstName": "Garry",

    "lastName": "Mckenzie",

    "score": 12

    ],

    [

    "firstName": "Leah",

    "lastName": "Rivera",

    "score": 10

    ],

    [

    "firstName": "Sonja",

    "lastName": "Moreno",

    "score": 3

    ],

    [

    "firstName": "Noel",

    "lastName": "Bowen",

    "score": 16

    ]

    ]
}

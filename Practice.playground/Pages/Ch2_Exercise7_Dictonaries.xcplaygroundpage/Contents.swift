var people: [[String:String]] = [
[

"firstName": "Calvin",

"lastName": "Newton"

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


//Chapter 2 - Excersice 7 - A - You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code[a] = z and code[b] = x the encoded version if ababa will be zxzxz. You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string
var encodedMessage = "uijt nfttbhf jt ibse up sf4be"
decodeMessage(encodedMessage: encodedMessage)

getFirstName(people: people)

func decodeMessage(encodedMessage: String) {
    
    
    let keys = ["a" : "b","b" : "c","c" : "d","d" : "e","e" : "f","f" : "g","g" : "h","h" : "i","i" : "j","j" : "k","k" : "l","l" : "m","m" : "n","n" : "o","o" : "p","p" : "q","q" : "r","r" : "s","s" : "t","t" : "u","u" : "v","v" : "w","w" : "x","x" : "y","y" : "z","z" : "a"]
    
    
    print("\n\nChapter 2 - Excersice 7 - A - You are given a dictionary code of type [String:String] which has values for all lowercase letters. The codedictionary represents a way to encode a message. For example if code[a] = z and code[b] = x the encoded version if ababa will be zxzxz. You are also given a encodedMessage which contains only lowercase letters and spaces. Use the codedictionary to decode the message and print it. Write a Swift program to decode the message and print final output string\n")
    
    for i in encodedMessage {
            if let key = keys.first(where: { $0.value == String(i)})?.key {
                print(key,terminator: "")
            } else if String(i) == " " {
                print(" ",terminator: "")
            }
    }
}

func getFirstName(people: [[String:String]]) {
    
    var firstNames: [String] = []
    for i in people {
        
        if let val = i.first(where: { $0.key == "firstName"})?.value {
            firstNames.append(val)
        }
    }
    print(firstNames)
}



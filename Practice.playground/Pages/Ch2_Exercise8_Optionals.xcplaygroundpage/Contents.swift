//: [Previous](@previous)

/* Create an example of demonstrating How to declare optionals in swift?
 
 What is force unwrapping in optionals show usage in example.

 Create one example of show usage of optional binding

 Create one example using if-let

 Create one example using guard-let

 Create one example using nil colloison operator */


var name = "Steve"
var mobileNumber: String?
var password = "Fgsj#%j(DF^"


if let value = mobileNumber {
    
    print("Mobile number is added and it is \(value)")
    
} else {
    
    print("Mobile number is not added - IF LET")
}

func unWrapp() {
    guard let _ = mobileNumber else {
        return }
}



print("Mobile Number is \(mobileNumber) is prints like this without using nil colloison operator.")
print("Mobile number is \(mobileNumber ?? "N/A" ) prints like this when available and its print default value N/A when mobile number is not available.")



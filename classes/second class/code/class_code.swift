import UIKit

// Homework from previous class

func add(param1: Int, param2: Int) -> Int {
return param1 + param2
}

func centuryFromYear(year: Int) -> Int {
return ((year - 1) / 100) + 1
}


// Conditionals

var isOverAge: Bool = false

var age: Int = 21
var hasDriverLicence: Bool = true
var hasACar: Bool = false

//if (age > 18)  {
//
//    if hasDriverLicence {
//
//        print("You can drive")
//
//        if hasACar {
//            print("You can drive")
//        }
//        else {
//            print("You're missing a car")
//        }
//
//    }
//    else {
//        print("Oh no you don't have a driver licence")
//    }
//
//}
//else {
//    print("Sorry you can't drive")
//}

//if (age < 18) {
//    print("teenager")
//}
//else if (age > 18) && (age < 40) {
//    print("adult")
//}
//else if (age > 40) && (age < 65) {
//    print("Not that old")
//}
//else {
//    print("old person")
//}


//// Ternary operator -> Sintaxis sugar


// network errors
// 200 - ok
// 400 - error
// 500 - server error

//var statusCode: Int = 401
//var errorRange = 400...499


//if statusCode == 200 {
//    print("ok")
//}
//else if statusCode == 400 {
//    print("my error")
//}
//else if statusCode == 500 {
//    print("server error")
//}

//switch statusCode {
//case 200:
//    print("ok")
//
//case 401:
//    print("bad request")
//
//case 400...499:
//    print("error")
//
//default:
//    print("Something bad happen... validate")
//}


// Collection

//// Arrays
//// Ordered collection
//// All of its elements are of the same type
//
////var myFirstArray: Array<String>
////var myFirstArrat: [String] = []
//var tripCities: [String] = ["Mexico City", "Guadalajara", "Queretaro", "Monterrey"]
////mexicoCities[10]
////mexicoCities.count
//let stillHaveMoney: Bool = false
//
//if stillHaveMoney {
//    tripCities.append("Toluca")
//}
//
//tripCities.insert("Cancun", at: 2)
//
//tripCities.isEmpty
//tripCities.count
//
//let reversedCities = Array(tripCities.reversed())
//
//print("The cities we visited during our trip: \(tripCities)")
//print("\(reversedCities)")


//// Sets
//// Unordered - elements are unique
//var groseryList: Set<String> = ["Apples", "Oranges", "Milk", "Chocolate", "Chocolate"]
//groseryList.count





//// Dictionary
//// Unordered - key/value - keys are unique
//
////var myfirstDictionary: Dictionary<Int, String>
//var myfirstDictionary: [Int: String] = [1: "One", 2: "Two", 3: "Three"]
//myfirstDictionary[1]
//myfirstDictionary
//myfirstDictionary[200] = "Ok from server"
//myfirstDictionary

// How to remove an element from a dictionary

// For Loop
//var tripCities: [String] = ["Mexico City", "Guadalajara", "Queretaro", "Monterrey"]
//
//print(tripCities)
//for city in tripCities {
//    print("We visited this city: \(city)")
//}


//for value in 1..<7 {
//    print(value)
//}

//var counter: Int = 0
//
//for _ in 1..<7 {
//    counter += 1
//    print("Hola")
//}
//
//print(counter)


// while

//var counter: Int = 1

//while counter < 10 {
//    print("Yei, one of ten iterations")
//    counter += 1
//}
//print("Out of the while \(counter)")

//repeat {
//    print("Hey!")
//} while counter < 1
//
//while counter < 1 {
//    print("Hey")
//}


//let myString = "some string"
//
//for character in myString {
//    print(character)
//}





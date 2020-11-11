
var myFirstVariable = 4; 
var myThirdVariable = 7
let mySecondVariable = 10 // camel case
//let my_second_variable // snake case
myFirstVariable = 5
//  mySecondVariable =  6

var myFirstBool: Bool = true //false
//myFirstBool = 10
var myFirstInger: Int = 10
var myFloat: Float = 10.123456789123456789
print(myFloat)
var myDouble: Double = 10.123456789123456789
print(myDouble)
var someDecimalInferance = 19

//  var myCharacter: Character = "123"
var myString: String = "Hello world!"

/*
 Functions
 */

////  func myFuncName(param1: Int) -> Int {
////      
////  }

func doubleTheValueOf(thisNumber numberToDouble: Int) -> Int {
    var result = numberToDouble * 2
    return result
}

//  doubleTheValueOf(thisNumber: 2)
//  doubleTheValueOf(numberToDouble: 2)




func add10To(_ numberToAdd10: Int) -> Int {
    return numberToAdd10 + 10 
}

add10To(10)




func divideThisNumber(_ numberToDivide: Double) -> Double {
    return numberToDivide / 2.0
}

//  let myNumber: Int = 5
//  divideThisNumber(myNumber)



func add(_ firstNumber: Int, _ secondNumber: Int) -> Int {
    return firstNumber + secondNumber
}

func compare(_ lhs: Int, _ rhs: Int) -> Bool {
    return lhs == rhs
}

let numberOne = 1
let numberTwo = 2

let numberToCompare = 3

let result = add(numberOne, numberTwo)
let areEqual = compare(result, numberToCompare)

print("yuuuuuhuuuuuu its \(areEqual)")

//  compare(add(numberOne, numberTwo), numberToCompare)




func sayHiInSpanishTo(_ person: String) {
    print("Hola \(person)!")
}

sayHiInSpanishTo("Alan")




/*
 First homework
 - second chapter "The Pragmatic Programmer" (two weeks)
 - First two challenges of the Code Signal - Arcade
 - Read and solve the quizes of: https://www.hackingwithswift.com/100/1
 */



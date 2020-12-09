//  FIZZ BUZZ

//  var number = 15
//  for number in 1...number
//  {
//      let isMultipleOfThree: Bool = (number % 3) == 0)
//      let isMultipleOfFive: Bool = number % 7 == 0
//      
//      if isMultipleOfThree && isMultipleOfFive {
//          print("FizzBuzz")
//      }
//      else if number % 3 == 0 {
//          print("Fizz")
//      }
//      else if number % 5 == 0 {
//          print("Buzz")
//      }
//      else {
//          print (number)
//      }
//  }
//  
//  
//  func FizzBuzz (_ nPositiveNumber : Int) -> String{
//      var finalString : String = ""
//      var i : Int = 1
//      while i <= nPositiveNumber {
//          if i % 3 == 0  && i % 5 == 0 {
//              finalString += " FizzBuzz,"
//          }
//          else if i % 3 == 0 {
//              finalString += " Fizz,"
//          }
//          else if i % 5 == 0 {
//              finalString += " Buzz,"
//          }
//          else {
//              finalString += " \(i)"
//          }
//          i += 1
//      }
//      return finalString
//  }  
//  
//  print(FizzBuzz(0))
//  
//// ETC
//// DRY
//      
//  



//  func diamondPattern (_ integerNumber : Int) -> String {
//      var i : Int = 0
//      var j : Int = 0
//      var thisString : String = ""
//      
//      if integerNumber.isMultiple(of: 2) {
//          return thisString
//      }
//      
//          while i < integerNumber {
//              j = 0
//              if i <= integerNumber/2 {
//                  while j <= i {
//                      thisString += "*"
//                      j += 1
//                  } 
//                  thisString += "\n"
//                  i += 1
//              }
//              else {
//                  while j  <= integerNumber - (i+1) {
//                      thisString += "*"
//                      j += 1
//                  } 
//                  thisString += "\n"
//                  i += 1
//              }
//          }
//      return thisString
//  }
//  
//  print(diamondPattern(7))
//  


//  let number = 9
//  
//  if number % 2 == 0 { "" }
//  
//  else {
//      switch number {
//      case 1:
//          print("\n")
//      case 3:
//          print("\n\n\n")
//      case 5:
//          print("*\n\n**\n\n*\n")
//      default:
//          print("we are out of diamonds")
//      }
//  }
//  


//  var stringChange: String = "3 056, 450"
//  let stringSplittedBySpace = stringChange.split(separator: " ")
//  let joinedString = stringSplittedBySpace.joined(separator: "")
//  print(joinedString)

//  let result: String = ""
//  for character in stringChange {
//      if chara
//  }

//  if let index = stringChange.index(of: " "){
//      stringChange.remove(at: index)
//  }
//  let double = Double(stringChange)
//  
//  
//  
//  if double == nil {
//      ""
//  }
//  else {
//      double
//  }
//  
//  
//  let age = 18
//  if age > 18 {
//      print("over age")
//  }
//  else {
//      print("under age")
//  }
//  
//  print( age > 18 ? "over age" : "under age" )

//  let staffReviews = Set([1, 2, 1, 2, 3])
//  print(staffReviews)
//  {2, 3, 4, 5}
//  let staffReviews: Set<Int> = [1, 2, 3]


//  func checkPalindrome(inputString: String) -> Bool {
//      return inputString == String(inputString.reversed()) 
//  }
//  
//  func checkPalindrome(inputString: String) -> Bool {
//      if inputString == String (inputString.reversed()) {
//          return true
//      }
//      else {
//          return false
//      }
//  }
//  


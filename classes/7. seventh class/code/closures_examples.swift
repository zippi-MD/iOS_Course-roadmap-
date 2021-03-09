
// Closures


//  func add(_ a: Int, _ b: Int) -> Int {
//      return a + b
//  }

let volunterCount: [Int] = [1, 3, 40, 32, 2, 53, 77, 13]

//  let _ = volunterCount.sorted(by: >)
//  if (bool) {
//      
//  }
//  else {
//      
//  }
func isAscending(_ lhs: Int, _ rhs: Int) -> Bool {
//      if lhs < rhs {
//          return true
//      }
//      else {
//          return false
//      }
    
    return lhs < rhs
    
}

//  let _ = volunterCount.sorted(by: isAscending)

//  let sorted = volunterCount.sorted(by: {
//      (lhs: Int, rhs: Int ) -> Bool in
//      
//      return lhs > rhs
//  })

//  let sorted = volunterCount.sorted { $0 > $1 }
//  
//  print(sorted)


let numbers: [Double] = [1.0, 4.0, 8.0, 20.5, 40.8, 10.11]
//  ["- 1 /n", "- 4 /n", "- 8 /n"...]

//  ([Doubles]) -> [String]

//  func format(numbers: [Double]) -> [String] {
//      var result: [String] = []
////      print("- \(numbers) /n")
//      for number in numbers {
//          result.append("- \(Int(number.rounded())) /n")
//      }
//      
//      return result
//  }

//  print(format(numbers: numbers))

//  ["* 1 /t", "* 4 /t", "* 8 /t"...]

//  func format2(numbers: [Double]) -> [String] {
//      var result: [String] = []
//      //      print("- \(numbers) /n")
//      for number in numbers {
//          result.append("* \(Int(number.rounded())) /t")
//      }
//      
//      return result
//  }

//  print(format2(numbers: numbers))




//  ["$ 1 /t", "$ 4 /t", "$ 8 /t"...]
//  DRY
//  Don't repeat yourself


func format(numbers: [Double], formatter: (Double) -> String) -> [String] {
    var result: [String] = []
    
    for number in numbers {
        let formattedNumber: String = formatter(number)
        result.append(formattedNumber)
    }
    
    return result
}


let numbersFormatted = format(numbers: numbers, formatter: {
    (number) -> String in
    return "$ \(number) /n"
})


//  print(numbersFormatted)
//  
//  
//  let someOtherForm = format(numbers: numbers) { "* \($0) /n" }
//  
//  format(numbers: numbers) { "# \($0) /n" }
//  format(numbers: numbers) { "@ \($0) /n" }



//  print(someOtherForm)

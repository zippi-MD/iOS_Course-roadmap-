//  
//  let cities: [String] = ["New York", "San Francisco", "Chicago", "Denver", "Illinois", "Springfield", "Los Angeles", "Colombia"]
//  
//  func itemInList(_ list: [String], item: String) -> Bool {
//      for value in list {
//          if value == item {
//              return true
//          }
//      }
//      
//      return false
//  }
//  
//  
//  itemInList(cities, item: "Mexico City")

//  
let items: [Int] = [1, 2, 3, 4, 5]

func allCombinations(of items: [Int]) -> [(Int, Int)] {
    var result: [(Int, Int)] = []
    
    for item in items {
        for nestedItem in items {
            result.append((item, nestedItem))
        }
    }
    
    return result
}

allCombinations(of: items)

//  
//  
//  let grades: [Int] = [1, 2, 3, 4, 5, 6, 7, 8]
//  
//  func printAll(from items: [Int]) {
//      for item in items {
//          print(item)
//      }
//  }
//  
//  printAll(from: grades)
//  
//  
//  
//  
////  let cities: [String] = ["New York", "San Francisco", "Chicago", "Denver"]
//  
//  func printFirst(from items: [String]) {
//      if items.count > 0 {
//          print(items[0])
//      }
//  }
//  
//  printFirst(from: cities)
//  
//  
//  let cities: [String] = ["New York", "San Francisco", "Chicago", "Denver"]
//  
//  func doublePrint(items: [String]) {
//      for item in items {
//          print("- \(item)")
//      }
//      
//      for item in items {
//          print("* \(item)")
//      }
//  }
//  doublePrint(items: cities)
//  
//  let someValues: [Int] = [1, 2, 3, 4, 5]
//  someValues[0]
//  
//  


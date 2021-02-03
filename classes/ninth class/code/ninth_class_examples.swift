//  var numbers = [3, 6, -2, -5, 7, 3]
//  var maxProduct: Int = 0
//  var index = 0
//  for (index, number) in numbers.enumerated() {
//      if numbers.count == index + 1 { break }
//      var mult = number * numbers[index + 1]
//      
//      if mult > maxProduct {
//          maxProduct = mult
//      }
//  }
//  
//  print(maxProduct)
//  



func underAge(name: String, age: Int, legalAge: Int = 18) -> Bool {
//      let legalAge = 18
    var isOverAge: Bool = false
    var messageToPrint = "Hi \(name), you are year(s) away from being an adult"
    
    if age >= legalAge {
        messageToPrint = "Hi \(name), you're and adult"
        isOverAge = true
    }
    
    print(messageToPrint)
    return isOverAge
}

underAge (name: "Alejandro",age: 17)
underAge(name: "Metallica", age: 18, legalAge: 21)



















// Class % Structures
//Allows us to define our objects
//OOP
//H
//P
//E

//  class Pokemon {
//      let type: String //properties
//      let trainer: String
//      
//      init(type: String, trainer: String) {
//          self.type = type
//          self.trainer = trainer
//      }
//      
//      deinit {
//          //Just before removing from memory
//      }
//      
//      func attack() { //method
//          print("attack")
//      }
//  }
//  
//  class FirePokemon: Pokemon {
//      init(trainer: String) {
//          super.init(type: "Fire", trainer: trainer)
//      }
//  }
//  
//  let charmander = FirePokemon(trainer: "Metallica")
//  
//  
////structs
//  struct Pokemon2 {
//      let type: String //properties
//      let trainer: String
//      
//      func attack() { //methods
//          print("Attack")
//      }
//  }
//  
//// Memberwise initializer
//// No heir // Protocols
//// No deinitializer
//  
////protocols
//  
//  let charStruct = Pokemon2(type: "Fire", trainer: "Metallica")
//  
//  

class Job {
    var employee: String = "Oscar"
    var description: String = "Manager"
    
    func describe() {
        print("\(employee) is a \(description)")
    }
}

struct JobStruct {
    var employee: String = "Oscar"
    var description: String = "Manager"
    
    func describe() {
        print("\(employee) is a \(description)")
    }
}



let job1 = Job() //class
let job3 = job1
job3.employee = "Metallica"
job3.description = "Director"
job1.describe()



let job2 = JobStruct() //struct
var job4 = job2
job4.employee = "Metallica"
job4.description = "Director"
job2.describe()
job4.describe()


    // structs are everywhere
    // value vs reference

    //value --> enum
    //reference --> closures









    //Homework

struct Stack {
    
    var data: [Int] = []
    
    mutating func push(value: Int) {
        data.append(value)
    }
    
    mutating func pop() -> Int? {
//          let lastIndex = data.count - 1
//          if lastIndex < 0 { 
//              return nil
//          }
//          let value = data[lastIndex]
//          data.remove(at: lastIndex)
//          return value
        return data.popLast()
    }
    
    func describe() {
        print(data)
    }
}


var myPlate = Stack()
myPlate.push(value: 1)
myPlate.push(value: 5)
myPlate.push(value: 7)
myPlate.describe()
print(myPlate.pop())
print(myPlate.pop())
print(myPlate.pop())
print(myPlate.pop())
print(myPlate.pop())
print(myPlate.pop())
print(myPlate.pop())
print(myPlate.pop())
myPlate.describe()




    //Code Signal

    //Queue 
    //- Enqueue
    //- Dequeue

    //Enum --> Raw values & Example


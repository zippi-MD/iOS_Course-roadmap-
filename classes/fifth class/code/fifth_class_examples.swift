



//  var personAge: Int? = nil
//  print(personAge)
//
  personAge = 22
//  print(personAge)
//
//    1 --> Int
//    personAge --> Int?
//
//  var newAge = personAge + 1


      //optional binding
  if let unboxedPersonAge = personAge {
      var newAge = unboxedPersonAge + 1
      print(newAge)
  }
  else {
      print("We don't have the user age")
  }

      //Implicitly unwrapped
  var newAge = personAge! + 1
  print(newAge)
//

      //Optional chaining
//  var studentName: String = "Metallica"
//  let upperCasedStudentName: String = studentName.uppercased()
//  print(upperCasedStudentName)

  var studentName: String? = "Oscar"
  let upperCasedStudentName: String? = studentName?.uppercased()


  if let name = upperCasedStudentName {
      print(name)
  }
  else {
      print("Missing student name")
  }




////Nil coalescing operator
  var personAge: Int? = 22

  var newPersonAge = 1 + (personAge ?? 0)
  print(newPersonAge)




//[String] [String?] [String]?
  var personKids: [String?] = []
  personKids.append(nil)
  personKids.append("Oscar")
  print(personKids.count)

//  var personKids: [String]? = ["Oscar", nil]

//Array
var kids: [String] = ["Oscar", "Daniel", "Metallica", "Cupi"]

print(kids.firstIndex(of: "Zippi"))


////Dictionaries and optionals
var myDictionary: [String: Int] = [:]
myDictionary["Oscar"] = 7
myDictionary["Metallica"] = 8

myDictionary["Oscar"] = nil
let noKey = myDictionary["Metallica"]

print(noKey)



// Pets

class Pet {
    
    let owner: String
    let age: Int
    let color: String

    func describe() {
      print("I'm \(age) old and my owner is \(owner)")
    }
    
    init(withOwner owner: String, withAge age: Int) {
        self.owner = owner
        self.age = age
        self.color = "Brownish"
        print("I'm being made")
    }
    
    deinit {
        print("Oh no I'm dying")
    }
    
}

let myFirstPetForMet: Pet = Pet(withOwner: "Metallica", withAge: 2)
let myFirtPetForOscar: Pet = Pet(withOwner: "Oscar", withAge: 3)

myFirstPetForMet.describe()
myFirtPetForOscar.describe()

var myFirstPet: Pet? = Pet(withOwner: "Daniel", withAge: 1)
var oscarCopyOfThePet = myFirstPet
myFirstPet?.describe()
myFirstPet = nil
oscarCopyOfThePet = nil



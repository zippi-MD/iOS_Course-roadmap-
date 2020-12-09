
// Pets

//  let owner: String = "Met"
//  let age: Int = 3
//  let species: String = "Dog"
//  
//  func describe() {
//      print("I'm a \(species), I'm \(age) old and my owner is \(owner)")
//  }
//  
//  
//  describe()

class Pet {
    let owner: String = "Met"
    let age: Int = 3
    
    func describe() {
        print("I'm \(age) old and my owner is \(owner)")
    }
}

let myFirtPet: Pet = Pet()
myFirtPet.age
myFirtPet.owner
myFirtPet.describe()

class Dog: Pet {
    let color: String = "Brown"
    
    func bark() {
        print("Wooof!")
    }
    
    override func describe() {
        print("I'm a dog!")
    }
}

let myFirstDog: Dog = Dog()
myFirstDog.age
myFirstDog.owner
myFirstDog.describe()
myFirstDog.color
myFirstDog.bark()


let myPets: [Pet] = [myFirtPet, myFirstDog]

for pet in myPets {
    pet.describe()
}

for pet in myPets where pet is Dog {
    pet.describe()
}


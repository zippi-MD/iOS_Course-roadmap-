
//  let counter: Int
//  let temperature: Double
//  let weekTemperature: [Doubles]
//  let name: String

//  OOP
//  class Pet {
//      let name: String = "Dog"
//  }






//  class Weapon {
//      let type = "sword"
//  }

//  sword --> 1
// gun --> 2
// magic sword --> 3

//  shield --> 1
// magic shield --> 2
// armor --> 3

//  func calculateDamage(weapon: Int, shield: Int) -> Int {
////      return 2 * weapon - shield
////      if weapon == 1 && shield == 1 {
////          return 2
////      }
////      else ifweapon == 2 && shield == 1  {
////          return 3
////      }
//      
//      switch (weapon, shield) {
//      case (1, 1) :
//          return 0
//      case (1, 2):
//          return 1
//      case (1, 3) :
//          return 0
//      case (2, 1):
//          return 1
//      case (2, 2) :
//          return 0
//      case (2, 3):
//          return 1
//      case (3, 1) :
//          return 0
//      case (3, 2):
//          return 1
//      case (3, 3) :
//          return 0
//      default:
//              return 99999
//      }
//  }




// enumerator --> Structs
enum Weapon {
    case sword
    case gun
    case magicSword
}

enum Shield {
    case shield
    case magicShield
    case armor
}

var myActualWeapon: Weapon = .sword
var myActualShield: Shield = .magicShield

myActualWeapon = .gun

//  func calculateDamage(weapon: Weapon, shield: Shield) -> Int {
//      switch (weapon, shield) {
//      case (Weapon.sword, Shield.shielf):
//          return 2
//      }
//      
//  }


//  func factorsRange(n: Int, m: Int) -> [Int: [Int]] {
//      
//  }


enum TimeFormat {
    case am
    case pm
}

func convertTime(hour: String, format: TimeFormat) -> String {
    return ""
}


//  convertTime(hour: "04:00", format: .pm) --> "16:00"
//  convertTime(hour: "10:00", format: .am) --> "10:00"

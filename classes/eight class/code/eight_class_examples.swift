import Foundation
//
////func order(input : String) -> String {
////
////    //collection
////    // array -> odered!!!
////    // dict -> unordered -> [key : value]
////    // set -> unique value
////    // range -
////
////    //map -> iterate over collection and return new collection with data processed
////    //filter -> iterate over collection and return a new collection with data that fulfills
////    //reduce -> iterate over collection and returns only 1 result
////
//////    let oneThroughNine: [Character] = (1...9).map { Character("\($0)") }
////
////    let inputSeparated = input.split(separator: " ")
//////    var orderedWords: [String] = [0, 0, 0, 0, 0, 0, 0, 0, 0]
////    var orderedWords: [String] = []
////    var output: String = ""
////
////    for word in inputSeparated {
////        orderedWords.append("0")
////    }
////
////    //orederedWords -> ["0", "0", "0", "0"]
////
////    for word in inputSeparated { //"a3"
////
////        var numberInWord: Int? //nil
////
////        for character in word { // character -> 3
////            numberInWord = Int("\(character)") // -> 3
////
////            // if let unwrappedValue = optionalValue
////            // ? -> !
////            // nil ?? someDefaultValue
////            if let index = numberInWord {
//////                print(index)// orderedWords = nil
//////                print(orderedWords)
//////                orderedWords.insert(String(word), at: index)
////                orderedWords[index - 1] = String(word)
////
////            }
////        }
////
//////        for number in oneThroughNine{
//////            if word.contains(number){
//////                output.append("\(word) ")
//////            }
//////        }
////
////    }
////    return orderedWords.joined(separator: " ")
////}
//
//func order2(input : String) -> String {
//    let inputSeparated = input.split(separator: " ")
//    var orderedWords: [String] = []
//
//    for _ in inputSeparated {
//        orderedWords.append("0")
//    }
//
//    for word in inputSeparated {
//        var numberInWord: Int?
//
//        for character in word {
//
//            numberInWord = Int("\(character)")
//
//            if let index = numberInWord {
//                orderedWords[index - 1] = String(word)
//            }
//        }
//    }
//
//    return orderedWords.joined(separator: " ")
//}
//
//func order(input : String) -> String {
//    let words = input.split(separator: " ")
//
//    var wordStorage: [Int: String] = [:]
//
//    for word in words {
//        for letter in word {
//            if let number = Int(String(letter)) {
//
//                wordStorage[number] = String(word)
//
//            }
//        }
//    }
//
//    var output = ""
//
//    for index in 1...9 {
//        output += "\(wordStorage[index] ?? "") "
//    }
//
//
//    print(wordStorage)
//
//    return output
//}
//
//let output = order(input:"a3 2is Th1is te4st")
//
//print(output)
//
//enum DayTime {
//    case pm
//    case am
//}

//func convertTime(_ time: String, format: DayTime) -> String {
//    var timeConverted: String = ""
//    let timeSeparated = time.split(separator: ":")
//
//    if format == .pm {
//        //Cast some type --> other type
//        let hours = Int(String(timeSeparated[0]))!
//        let minutes = Int(String(timeSeparated[1]))!
//
//        timeConverted = "\(hours + 12):\(minutes)"
//    }
//    else {
//
//        if timeSeparated[0] == "12" {
//            timeConverted.append("00:\(timeSeparated[1])")
//        }
//        else {
//            timeConverted.append("\(timeSeparated[0]):\(timeSeparated[1])")
//        }
//
////        switch timeSeparated[0]{
////        case "12":
////            timeConverted.append("00:\(timeSeparated[1])")
////        default:
////                timeConverted.append("\(timeSeparated[0]):\(timeSeparated[1])")
////        }
//
//    }
//    return timeConverted
//}
//
////"8:31" .pm // .am
//convertTime("08:31", format: .am)


// Impostor?!



//-> structs

//class

//OOP
// encapsulación
// Herencia
// Polimorfismo

//class -> define our ownt type
// Int , float, double, strings

enum PokemonType {
    case fire
    case normal
}

class Pokemon {
//    let type: PokemonType // enum
    let type: String // enum
    let name: String
    
//    let trainer: String?
    
    init(type: String, name: String) {
        self.type = type
        self.name = name
    }
    
    func sayName() -> String {
        return name
    }
    
    func trianerName() {
//        print traienr name
//        print i'm lost
    }
}

class FirePokemon: Pokemon {
    func makeFire() {
        print("🔥🔥🔥")
    }
}

//class water / grass

let initial = FirePokemon(type: "fire", name: "Charmander")
let second = Pokemon(type: "normal", name: "Ratatta")
//let initial = FirePokemon(type: .normal, name: <#T##String#>)


func beatyPrintName(pokemon: Pokemon) {
    print("My name is: \(pokemon.name)")
}

print(initial.sayName())
initial.makeFire()
print(second.sayName())


//func (pokemon) -> print type

beatyPrintName(pokemon: initial)
beatyPrintName(pokemon: second)


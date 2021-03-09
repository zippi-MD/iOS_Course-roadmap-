func add(firstNumber: Int, secondNumber: Int) -> Int{ 
	return firstNumber + secondNumber
}


// How to call a function
let result = add(firstNumber: 2, secondNumber: 2)
// print(result)

// Diamonds
// Jump line
print("Hello\nMet")

//Function that prints Met n number of time

func printMetThis(numberOfTimes timesToPrint: Int) {
	
	for iteration in 0..<timesToPrint {
		if iteration % 2 == 0 {
			print("Met \(iteration)")
		}
	}
	print("-------")

	let metsNames: [String] = ["Met", "Alan", "Metallica"]

	for name in metsNames {
		print(name)
	}

	print("-------")
	var counter = 0

	while counter < timesToPrint {
		print("Met \(counter)")
		counter += 1
	}

}

printMetThis(numberOfTimes: 5)



let numbersToIterate: [Int] = [1, 2, 3, 4, 5]

print(numbersToIterate[2])

for firtsIteration in numbersToIterate {//1
	for secondIteration in numbersToIterate {//2
		print("\(firtsIteration), \(secondIteration) --> \(firtsIteration + secondIteration)")
	}
}

let cities: [String] = ["Mexico City", "New York", "San Francisco", "Queretaro"]

for (index, city) in cities.enumerated() {
	//index: 3
	//city: Queretaro
	print("city \(city) is on position \(index)")

	//4<4 -> false
	if index + 1 < cities.count {
		print("Next city: \(cities[index + 1])")
	}

	print("-----------")
}


//Complete previous challenges
//Upload challenges to github
//Codesignal challege "adjacentElementProduct"


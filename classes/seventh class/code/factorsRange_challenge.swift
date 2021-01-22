
func factorsRange(n: Int, m: Int) -> [Int: [Int]] {
    var result: [Int: [Int]] = [:]
    //[ 1: [1], 2: [1, 2], 3: [1, 3] ] --> 
    for key in n...m {
        for possibleFactor in 1...key {// possibleFactor --> 1
            if key % possibleFactor == 0 {
                var currentFactors: [Int] = result[key] ?? [] // currentFactors --> 
                currentFactors.append(possibleFactor)
                result[key] = currentFactors
            }
        }
    }
    
    
    return result
}

print(factorsRange(n: 22, m: 25))


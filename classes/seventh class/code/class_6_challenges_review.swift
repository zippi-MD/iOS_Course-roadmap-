// examples
func productsFrom (_ factorsArray: [Int]) -> [Int] {
    var productsArray = [Int]()
    for factor in factorsArray {
        productsArray.append((factorsArray.reduce(1, *))/factor)
    }
    return productsArray
}

let factors: [Int] = [2, 4, 6, 8]
print(productsFrom(factors))

//  (n*n) --> O(n^2)


let value = [1, 2 ,6, 5, 9]
func allProducts(numbers: [Int]) -> [Int] { 
    var result: [Int] = []
    
    for actualValue in numbers {
        var intialValue = 1
        for number in numbers {
            if actualValue != number {
                intialValue = number * intialValue
            }
        }
        result.append(intialValue)
    }
    
    return result
}
allProducts(numbers: value)

    //O(n^2)


for (index, number) in value.enumerated() {
    print("\(index) - \(number)")
}

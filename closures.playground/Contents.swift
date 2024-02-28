import UIKit

// 1) Closures uses
var multipltyClosure: (Int, Int) -> Int
var multiplyClosure = { (a: Int, b: Int) -> Int in
    return a*b
}
let result = multiplyClosure(4, 2)

//short hand syntax omitting arg names, omitting 'return' keyword
multiplyClosure = {
    $0 * $1
}

func operateOnNumbers (a: Int, b: Int, operation: (Int, Int) -> Int ) -> Int {
    let result = operation(a, b)
    //print(result)
    return result
}
operateOnNumbers(a: 5, b: 10, operation: multiplyClosure)
operateOnNumbers(a: 2, b: 7, operation: {$0 + $1})


// 2) Closures in collections
let names = ["ZZZZZZ", "BB", "A", "CCCC", "EEEEE"]

var temp = names.sorted {
    $0.count > $1.count
}
print(temp)

var prices = [1.5, 10, 4.99, 2.30, 8.19]
let largerPrices = prices.filter {
    $0 > 5
}

let stock = [1.5: 5, 10: 2, 4.99: 20, 2.30: 5, 8.19: 30]
let stockSum = stock.reduce(0) {
  $0 + $1.key * Double($1.value)
}


//Making network requests
let url = URL(string: "https://api.example.com/data")!
let session = URLSession.shared
//below we use closure to write code that should execute after network request has completed
let task = session.dataTask(with: url) { (data, response, error) in
    if let data = data {
        // Parse and process the data
    }
}
task.resume()


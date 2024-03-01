import UIKit


// ENUM EXAMPLES

enum Direction {
    case up
    case down
    case left
    case right
}

enum CarBrand: String, CaseIterable {
    case Mercedes = "Known for luxury and iconic design. Definitely my fav!"
    case Toyota = "Known for high-quality, high-value cars"
    case Volkswagen = "This is the people's car"
    case Ford = "Known for crisp handling, absorbent ride, and solid feel"
    case Honda = "Known for their well-built, reliable cars"
}

// we are looping through our enum and accessing all its raw values
for brand in CarBrand.allCases {
    print(brand.rawValue)
}

func carKnownFor(brand: CarBrand) -> String {
    return brand.rawValue
}

carKnownFor(brand: .Ford)
carKnownFor(brand: .Mercedes)


//Example of enum with functions
enum Weekday {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case Friday
    case Saturday
    case Sunday

    func dayType() -> String {
        switch self {
        case .Sunday, .Saturday:
            return  "Weekend"
        default:
            return "Weekday"
        }
     }
}

Weekday.Monday.dayType()
// this will return "Weekday"
Weekday.Sunday.dayType()
// this will return "Weekend"


// ARRAYS EXAMPLES

var arr = [3, 5, 1, 4, 2, 9, 7]

arr.append(6)
arr.removeFirst()
arr.sort()
arr.remove(at: 2)
print(arr[3])

for element in arr {
    print(element)
}

var anotherArr = [10, 11, 12]

var sumArr = arr + anotherArr

print("\n *** Printing Array ***")
for (index, value) in sumArr.enumerated() {
    print("Index \(index) has value \(value)")
}


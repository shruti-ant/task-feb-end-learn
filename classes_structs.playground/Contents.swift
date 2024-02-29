import UIKit
import Foundation

/*
 Theory
 
 Structures vs. classes recap
 Structures
 • Useful for representing values.
 • Implicit copying of values.
 • Becomes completely immutable when declared with let.
 • Fast memory allocation (stack).
 Classes
 • Useful for representing objects with an identity.
 • Implicit sharing of objects.
 • Internals can remain mutable even when declared with let.
 • Slower memory allocation (heap)
 */

// EXAMPLES OF STRUCTS

struct Person {
    var firstName: String
    var lastName: String

    func fullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

let person = Person(firstName: "John", lastName: "Doe")
print(person.fullName())


struct Car {
    // Properties
    var carPrice: Float
    var carColor: String
}

// create instance of struct
var car1 = Car(carPrice: 21000, carColor: "Red")

print(car1.carPrice)
print(car1.carColor)

// create another instance of struct
var car2 = Car(carPrice: 32000.5, carColor: "Black")

print(car2.carPrice)
print(car2.carColor)


// EXAMPLES OF CLASSES

class Bike {

  var name: String
  var gear: Int
  var color: UIColor = .black

  // assign value using initializer
  init(name: String, gear: Int){
    self.name = name
    self.gear = gear
  }
    
  func rePaint(clr: UIColor) {
    self.color = clr
  }
    
}

var bike1 = Bike(name: "BMX Bike", gear: 2)
bike1.rePaint(clr: UIColor.blue)

print("Name: \(bike1.name) and Gear: \(bike1.gear) and Color: \(bike1.color)")


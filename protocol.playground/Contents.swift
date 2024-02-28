import UIKit


/*
protocols don’t define anything you instantiate directly. Instead, they define an interface or blueprint that actual concrete types conform to. With a protocol, you define a common set of properties and behaviors that concrete types go and implement.
 
 you can have protocols that inherit from other protocols, much like you can have classes that inherit from other classes
 */

protocol Mobile {
    var name: String { get }
    var iEMICode: Int { get }
    var sIMCard: String { get }
    var processor: String { get }
    var internalMemory: Int { get}
    var isSingleSIM: Bool { get }

    mutating func GetIEMICode() -> String

    func SendMessage() -> String

    func Dial() -> String

    func Receive() -> String

    init(name: String)
}

struct Apple: Mobile {
    var name: String = "Apple"

    init(name: String) {
        self.name = name
    }
    var iEMICode: Int  = 3244332

    var sIMCard: String = "Vodaphone"

    var processor: String = "Snapdragon"

    var internalMemory: Int = 213424

    var isSingleSIM: Bool = true

    mutating func GetIEMICode() -> String {
        return "IEMEICode"
    }

    func SendMessage() -> String {
       return "Message sent"
    }

    func Dial() -> String {
        return "Dialed"
    }

    func Receive() -> String {
        return "Receiving call"
    }
}

struct Samsung: Mobile {
    var name: String = "Samsung"

    init(name: String) {
        self.name = name
    }

    var iEMICode: Int = 3243433

    var sIMCard: String = "TMobile"

    var processor: String = "Snapdragon"

    var internalMemory: Int = 324432

    var isSingleSIM: Bool = false

    func GetIEMICode() -> String {
        return "IEMEICode"
    }

    func SendMessage() -> String {
        return "Message sent"
    }

    func Dial() -> String {
        return "Dialed"
    }

    func Receive() -> String {
       return "Receiving call"
    }
}




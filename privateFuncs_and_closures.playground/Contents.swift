import UIKit

/*
 In Swift, private is an access control used to define how types, functions, and other declarations can be accessed in your project. You can set the private accessibility (visibility) of classes, structs, enums, functions, variables, and so on.

 It restricts the use of an entity to the enclosing declaration, and to extensions of that declaration that are in the same file. Use private access to hide the implementation details of a specific piece of functionality when those details are used only within a single declaration.

 */

class Student {
    var name = ""
    private let schoolName = "DPS"
    
    init(name: String) {
        self.name = name
    }
    
    private func getSchoolName() -> String {
        return schoolName
    }
    
    func printDescription() {
        print("Student is \(name), from school " + getSchoolName())
    }
    
}

// How to access it?
let alex = Student(name: "Alex")
alex.printDescription()

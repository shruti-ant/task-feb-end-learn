import UIKit
import Foundation

/*
 This is how the delegate pattern works. The communication flow is always 1-to-1 between the delegate and the worker.

 The worker is always doing the same job, but by providing different data and reacting differently on work completions we can reuse the worker in a lot of places where we need to handle the different cases.

 Delegation works great when there is a clear relationship between the owner and the “Worker”. For other cases, you will want to resort to other patterns.

 I would also like to repeat that the worker knows what to send or request from the delegate.
 */

protocol WorkerDelegate: AnyObject {
    func didFinishWork()
}

class Worker {
    weak var delegate: WorkerDelegate?

    func startWork() {
        // Start some work..
        //
        //
        // .. and when it is completed, notify the delegate:
        delegate?.didFinishWork()
    }
}

class ViewController: UIViewController {

    private let worker = Worker()

    override func viewDidLoad() {
        super.viewDidLoad()

        // It is always important to set the delegate before we invoke the worker to start doing something.
        // Better alternative could be to pass the delegate in the initializer of the Worker.
        worker.delegate = self

        worker.startWork()
    }
}

extension ViewController: WorkerDelegate {

    func didFinishWork() {
        // Worker finished the work. Now we can react to it by fetching some data or updating the UI.
    }
}

//Examples from UIKit components @
// UIImagePickerControllerDelegate, UITableView Delegate/DataSource


// *************** ANOTHER EXAMPLE ***************

//Just base setup protocol, not related to delegate pattern
protocol FarmAnimal {
  var name: String { get set }  // name of the animal
  var food: String { get }      // food that the animal eats
  func eat()
}

protocol CowDelegate {
    func feedCow(cow: Cow)
}


class CowFarmer: NSObject, CowDelegate {
    func feedCow(cow: Cow) {
        print("Feeding \(cow.name) some \(cow.food)...")
    }
}

class Cow: NSObject, FarmAnimal {
  
  var name: String
  var food: String = "grass"
  var delegate: CowDelegate?
  
  init(name: String, delegate: CowDelegate) {
    self.name = name
    self.delegate = delegate
  }
  
  init(name: String) {  // this is a designated initializer. Why?
    self.name = name
  }

  func eat() {
    self.delegate?.feedCow(cow: self)
    nap()
  }
  
  func nap() {
    print("Now I'm going to take a nap because I'm a cow.")
  }
}

/*
 In summary, a delegate is an object that does work for a certain class. In Swift, it implemented with protocols in order to force the desired behavior.
 */


var cowFarmer = CowFarmer()
var cow = Cow(name: "Joe", delegate: cowFarmer)
cow.eat()

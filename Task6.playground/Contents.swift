import Cocoa

struct Queue<T> {
    var massiv = [T]()
    mutating func add (value: T) {
        massiv.append(value)
        print("The number in the queue is \(value)")
    }
    mutating func remove () {
        massiv.removeFirst()
    }
    mutating func amIFirst () {
        print("Hi where is \(massiv.count) in queue, u whould be \(massiv.count + 1) , wanna join?")
    }
    mutating func iAmAMother (value: T) {
        massiv.insert(value, at: 0)
    }
    }



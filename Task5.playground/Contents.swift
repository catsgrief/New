import Cocoa
enum windowsAre {
    case open, close
}
enum engineIse {
    case off, on
}

protocol Car1 {
    
    var model: String {get set}
    var price: Int {get set}
    var windows: windowsAre {get set}
    var engine: engineIse {get set}
    var data: Int {get}
     mutating func sellInfo ()
}
extension Car1 {
    mutating func windowsOption () {
        switch windows {
        case windowsAre.close :
            self.windows = windowsAre.open
        case windowsAre.open:
            self.windows = windowsAre.close
        }
    }
    mutating func engineOption () {
        switch engine {
        case engineIse.off :
            self.engine = engineIse.on
        case engineIse.on:
            self.engine = engineIse.off
        }
    }
}
class SportCar: Car1 {
    var model: String
    
    var price: Int
    
    var windows: windowsAre
    
    var engine: engineIse
    
    var data: Int
    
    var speed: Int
    
    func sellInfo() {
        print("the price \(model) is \(price)")
    }
    
    init(model: String, price: Int, data: Int, windows: windowsAre, engine: engineIse, speed: Int) {
        self.model = model
        self.price = price
        self.data = data
        self.windows = windows
        self.engine = engine
        self.speed = speed
    }
    
}

class TrunkCar: Car1 {
    var model: String
    
    var price: Int
    
    var windows: windowsAre
    
    var engine: engineIse
    
    var data: Int
    
    var trunk: Int
    
    func sellInfo() {
        print("the price \(model) is \(price)")
    }
    
    init(model: String, price: Int, data: Int, windows: windowsAre, engine: engineIse, trunk: Int) {
        self.model = model
        self.price = price
        self.data = data
        self.windows = windows
        self.engine = engine
        self.trunk = trunk
    }
    
}
extension SportCar: CustomStringConvertible {
var description: String {
    return "Buy now! speed is \(speed), data is \(data), low price, onlu today \(price)!!!"
}
}
extension TrunkCar: CustomStringConvertible {
var description: String {
    return "Buy now! value of trunk is \(trunk), data is \(data), low price, only today \(price)!!!"
}
}

var kamazik = TrunkCar(model: "Kamaz", price: 2000, data: 2016, windows: windowsAre.close, engine: engineIse.off, trunk: 300)
print(kamazik.description)
print(kamazik.windows)
kamazik.windowsOption()
print(kamazik.windows)

var bugatti = SportCar (model: "bugatti", price: 100000, data: 2020, windows: windowsAre.open, engine: engineIse.on, speed: 450)
print(bugatti.description)
print(bugatti.engine)
bugatti.engineOption()
print(bugatti.engine)

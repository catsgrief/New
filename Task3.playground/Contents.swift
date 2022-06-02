import Cocoa

struct kamazCar {
    
    enum enginIs{
        case engineOn
        case engineOff
    }
    enum windowsAre{
        case winOpen
        case winClose
    }
    var model: String
    var data: Int
    var trunk: Int
    var windows = windowsAre.winOpen
    var engine = enginIs.engineOff
    var trunkLoad = 0
    
    mutating func loadTrunk (weight: Int){
        var newValue = 0
        newValue = newValue + weight
        if weight <= trunk - (trunkLoad) {
            trunkLoad = newValue
            print("Объем багажника \(trunkLoad)")
        } else {
            print("Вес больше объема багажника")
        }
    }
    
       mutating func unLoadTrunk (weight1: Int){
            var newValue = 0
        newValue = weight1
            if weight1 <= (trunk - trunkLoad) {
               trunkLoad = trunkLoad - newValue
                print("Объем багажника \(trunkLoad)")
            } else {
                print("в багажнике столько нет")
            }
    }
      mutating func openWindows (status: windowsAre){
        if windows == windowsAre.winOpen {
            self.windows = windowsAre.winClose
            print(windows)
        } else {
            self.windows = windowsAre.winOpen
            print(windows)
        }
            }
}

var kamazik = kamazCar(model: "Kamaz", data: 2022, trunk: 100)
kamazik.loadTrunk(weight: 20)
print(kamazik.trunkLoad)
print(kamazik.trunk)
kamazik.unLoadTrunk(weight1: 19)
kamazik.openWindows(status: kamazik.windows.self)

struct sportCar {
    
    enum enginIs{
        case engineOn
        case engineOff
    }
    enum windowsAre{
        case winOpen
        case winClose
    }
    var model: String
    var data: Int
    var trunk: Int
    var windows = windowsAre.winOpen
    var engine = enginIs.engineOff
    var trunkLoad = 0
    var maxSpeed = 300
    var actualSpeed = 0
    
    mutating func loadTrunk (weight: Int){
        var newValue = 0
        newValue = newValue + weight
        if weight <= trunk - (trunkLoad) {
            trunkLoad = newValue
            print("Объем багажника \(trunkLoad)")
        } else {
            print("Вес больше объема багажника")
        }
    }
    
       mutating func unLoadTrunk (weight1: Int){
            var newValue = 0
        newValue = weight1
            if weight1 <= (trunk - trunkLoad) {
               trunkLoad = trunkLoad - newValue
                print("Объем багажника \(trunkLoad)")
            } else {
                print("в багажнике столько нет")
            }
    }
      mutating func openWindows (status: windowsAre){
        if windows == windowsAre.winOpen {
            self.windows = windowsAre.winClose
            print(windows)
        } else {
            self.windows = windowsAre.winOpen
            print(windows)
        }
            }
    mutating func changeSpeed (speed: Int) {
                if speed <= (maxSpeed - actualSpeed) {
            actualSpeed = actualSpeed +  speed
            print(actualSpeed)
        } else {
            print("Stop")
        }
    }
}
var ferarri = sportCar (model: "niceOne", data: 2018, trunk: 10, windows: sportCar.windowsAre.winOpen, engine: sportCar.enginIs.engineOn, trunkLoad: 0, maxSpeed: 400, actualSpeed: 70)
ferarri.changeSpeed(speed: 100)
ferarri.changeSpeed(speed: -50)

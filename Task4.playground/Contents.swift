import Cocoa

class Car {
    enum windowsAre {
        case open, close
    }
    enum enginAre {
        case On, Off
    }
    
    var data : String
    var color : String
    var windows = windowsAre.close
    var engine = enginAre.Off
    
    init(data: String, color: String) {
        self.data = data
        self.color = color
    }
}

class SportCar: Car {
    var maxSpeed = 300
    var currentSpeed = 0
   
    
    func changeSpeed(speed: Int)  {
        if speed <= maxSpeed {
           currentSpeed = currentSpeed + speed
        }

    }
    }

class TrunkCar:Car {
    var trunk = 100
    var currentTrunkLoad = 0
    
    func loadTrunk (weight: Int){
          var newValue = 0
          newValue = newValue + weight
          if newValue <= (trunk - currentTrunkLoad) {
              currentTrunkLoad = newValue
              print("Объем багажника \(currentTrunkLoad)")
          } else {
              print("Вес больше объема багажника")
          }
      }
      
         func unLoadTrunk (weight1: Int){
              var newValue = 0
          newValue = newValue + weight1
              if weight1 <= (trunk - currentTrunkLoad) {
                 currentTrunkLoad = currentTrunkLoad - newValue
                  print("Объем багажника \(currentTrunkLoad)")
              } else {
                  print("в багажнике столько нет")
              }
}
}
protocol CarInfo {
   var model: String {get set}
    var price: Int {get set}
    mutating func sellInfo () -> String
}

extension CarInfo {
mutating func windowOption (status: windowsAre) {
    switch windows {
    case windowsAre.close:
        self.windows = windowsAre.open
    default:
        self.windows = windowsAre.close
    }

}

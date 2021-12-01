class Car {
    var mark = ""
    var carMiles = 0
    var engine = false
    var doors = false
    var mp3 = false

    func changeMarkToPorcshe() {
        mark = "Porcshe"
    }
    func changeMarkToMan() {
        mark = "Man"
    }
    func showMark() {
        print("\(mark)")
    }

    func enableCarMiles() {
        carMiles = carMiles + 1000
    }
    func showCarMiles(){
        print("\(mark) passed \(carMiles)")
    }

    func engineOn() {
        engine = true
    }
    func engineOff() {
        engine = false
    }
    func showEngine() {
        if engine == true {
            print("engine \(mark) is on")
        } else {
            print("engine \(mark) is off")
        }
    }

    func openDoors() {
        doors = true
    }
    func closeDoors() {
        doors = false
    }
    func showDoors() {
        if doors == true {
            print("doors \(mark) is open")
        } else {
            print("doors \(mark) is closed")
        }
    }

    func musicOn() {
        mp3 = true
    }
    func musicOff() {
        mp3 = false
    }
    func showMusic() {
        if mp3 == true {
            print("in \(mark) play any music")
        } else {
            print("in \(mark) music not play")
        }
    }
}

final class SportCar: Car {
    
    var backSeat: BackSeat
    init(backSeat: BackSeat) {
        self.backSeat = backSeat
    }
    func showBackSeat() {
        if self.backSeat == .have {
            print("\(mark) have backseat")
        } else {
            print("\(mark) haven't backseat")
        }
    }
    func enableBackSeat() {
        backSeat = .have
    }
    func disableBackSeat() {
        backSeat = .haveNot
    }
}

var sportCar = SportCar(backSeat: .have)
    
sportCar.mark = "Audi"
sportCar.carMiles = 700
sportCar.engine = true
sportCar.doors = true
sportCar.mp3 = false
sportCar.backSeat = .haveNot

sportCar.changeMarkToPorcshe() // меняет марку автомобиля во всех результатах
sportCar.showMark()

sportCar.enableCarMiles() // добавляет 1000 миль
sportCar.showCarMiles()

sportCar.engineOn() //engineOff() выводит engine Porcshe is off
sportCar.showEngine()

sportCar.closeDoors() //openDoors() выводит doors Porcshe in closed
sportCar.showDoors()

sportCar.musicOff() //musicOn() включает музыку обратно
sportCar.showMusic()

sportCar.enableBackSeat() //disableBackSeat убирает заднее сиденье
sportCar.showBackSeat()

print(" ")

final class TrunkCar: Car {

    var trailer: Trailer
    init(trailer: Trailer) {
        self.trailer = trailer
    }
    func showTrailer() {
        if self.trailer == .have {
            print("\(mark) have trailer ridenow")
        } else {
            print("\(mark) haven't trailer ridenow")
        }
    }
    func enableTrailer() {
        trailer = .have
    }
    func disableTrailer() {
        trailer = .haveNot
    }
}
var trunkCar = TrunkCar(trailer: .have)

trunkCar.mark = "Scania"
trunkCar.carMiles = 15000
trunkCar.engine = true
trunkCar.doors = true
trunkCar.mp3 = true
trunkCar.trailer = .haveNot

trunkCar.changeMarkToMan()
trunkCar.showMark()

trunkCar.enableCarMiles() // 16000
trunkCar.enableCarMiles() // 17000
trunkCar.showCarMiles()

trunkCar.engineOff()
trunkCar.showEngine()

trunkCar.closeDoors()
trunkCar.showDoors()

trunkCar.musicOff()
trunkCar.showMusic()

trunkCar.enableTrailer()
trunkCar.showTrailer()

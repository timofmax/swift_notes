/*
Protocol set of requirements, which define future sheme of class or struct

Protocols can be inhereted by Classes or Structs
- struct can inherit from protocol
- class can inherit from protocol
 */


class Bird {
    var ifFemale = true
    
    func makeEgs() {
        if ifFemale == true {
            print("Bird makes eggs")
        }
    }
    
}


class Eagle: Bird {
    func sous() {
        print("Drops down insanly fast")
    }
    func fly() {
        print("Bird moving wings and lifts off to sky")
    }
    
}

let pinguine = Bird()
pinguine.makeEgs()

let whiteEagle = Eagle()
whiteEagle.makeEgs()
whiteEagle.fly()
whiteEagle.sous()

protocol canFly {
    func fly()
}

class seagul: Bird, canFly {
    func fly() {
        print("Fluing above water")
    }
}

let JonatanLevingston = seagul()
JonatanLevingston.fly()


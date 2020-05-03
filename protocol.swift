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

/*
 Most interesting thing that requirement defined by protocol
 can be used in defining data type
 in struct flyingStaff attribute actionFly set to canFly protocol
 so, in using method flyingMovements in struct actionFly it's will be mandatory
 
 */



struct flyingStaff {
    func flyingMovements(actionFly: canFly) {
        actionFly.fly()
    }
}

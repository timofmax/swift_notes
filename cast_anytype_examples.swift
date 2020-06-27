import UIKit

class Animal {
    var name: String
    init(n: String) {
        name = n
    }
    func identity() {
        print("now we are animal")
    }
}

class Human: Animal {
    func code() {
        print("Coding on swift")
    }
}


class Fish: Animal {
    func breath() {
        print("Breath under the water")
    }
    
    func swim() {
        print("We are moves underwater")
    }
}


let me = Human(n: "Tim")
let pet = Animal(n: "ZhuL")
let shark = Fish(n: "Cat Fish")
let just_number = 10
let some_12: NSNumber = 12
let some_word: NSString = "String from NSObject"

var array_animal = [me, pet, shark]

//Array satisfy to [Any] type
let any_test_array: [Any] = [just_number, me, pet, shark]

//Array satisgy to [NSObject] type

let nsobject_array: [NSObject] = [some_12, some_word]

for person in array_animal {
    if person is Fish {
        print(person.name)
        let shark_fish = person as! Fish
        shark_fish.breath()
    }
}

// Upcasting
var fish_to_aninal = Fish(n: "Kit")

var peopleToAnimal = me as Animal

fish_to_aninal.swim()

//Down casting
//
//as?
//as!



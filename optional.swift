
/*
?? - if optional has value it's will in action
otherwise second value in use
 */
var optional_2: Float?

print(optional_2 ?? "nothing")

/*
Unpacking optional
in case optional bmi has value
unwrappedBMI == bmi!
in following if statement
 */

var bmi: Float?
bmi = 0.12

if let unwrappedBMI = bmi {
    print(bmi)
} else {
    print("0.00")
}


/*
struct has cool feature it's adds ".?" for properties
so in case we are creating variable people as following
 */

struct someParameters {
    var name: String
    var age: Int
}

struct info_for_person {
    var people: someParameters?
    
    func print_info() {
        print(people?.name ?? "No name defined")
    }
    
}


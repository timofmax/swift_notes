import UIKit

struct staticStruct {
    var a = "some A"
    static var b = "static B"
}


print(staticStruct().a)
print(staticStruct.b)



//Following not gonna work as it not defined with static
print(staticStruct.a)

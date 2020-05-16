import UIKit

/*
 Extensioning current capabilities of build-in classes
 Allowing re-write current methods
 */

extension Double {
    func round(to: Int) -> Double {
        var extender = pow(Double(10), Double(to))
        var passedValue = self
        var multiplied  = passedValue * extender
        multiplied.round()
        var result = multiplied/extender
        return result
    }
}

var pi = 3.14159265359

pi.round(to: 3)

// => 3.141


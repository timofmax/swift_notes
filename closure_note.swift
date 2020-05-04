//Closure start:

func calculator(n1: Int, n2: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(n1, n2)
}

func multiply(n1: Int, n2: Int) -> Int {
    return n1 * n2
}

//Can be simplified

calculator(n1: 32, n2: 24, operation: { (no1: Int, no2: Int) -> Int in
    return no1 * no2
})

//As next step:


calculator(n1: 32, n2: 24, operation: { (no1, no2) -> Int in
    return no1 * no2
})

//And even shorter
//cut off: result type and return


calculator(n1: 32, n2: 24, operation: { (no1, no2) in no1 * no2 })

//Adding Anonymous parameter:

let res = calculator(n1: 32, n2: 24, operation: {$0 * $1 })
print(res)

//If last argument is closure, just take it out of brakcets

let res2 = calculator(n1: 32, n2: 24) {$0 * $1 }
print(res)


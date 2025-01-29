func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

let area = calculateArea(length: 10, width: 5)
print(area) // Output: 50.0

//This is correct.  However, if the parameters are in the wrong order, then we might not get the expected result
let area2 = calculateArea(width: 10, width: 5) //compiler will not complain
print(area2) //Output: 50.0, this is incorrect and the compiler will not complain

//Another way to reproduce this is by using different data types
func calculateArea(length: Int, width: Double) -> Double {
    return Double(length) * width
}
let area3 = calculateArea(length:10, width:5.0)
print(area3)// Output: 50.0

let area4 = calculateArea(length: 10, width: 5) //Compiler will not complain, this is also incorrect
print(area4) //Output: 50.0

//This will result in a compiler error
func calculateArea(length: Int, width: Int) -> Double {
    return Double(length) * Double(width)
}
let area5 = calculateArea(length: 10, width: 5)
print(area5) //Output: 50.0
let area6 = calculateArea(length: 10, width: 5.0) //Compiler error
print(area6)
func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

let area = calculateArea(length: 10.0, width: 5.0)
print(area) // Output: 50.0

// Explicitly specifying types eliminates ambiguity and prevents unexpected results.
let area2 = calculateArea(length: 10.0, width: 5.0) 
print(area2) // Output: 50.0

//Similarly we can use explicit types in our function definitions
func calculateArea2(length: Int, width: Int) -> Int {
    return length * width
}

let area3 = calculateArea2(length: 10, width:5)
print(area3) //Output: 50

let area4 = calculateArea2(length: 10, width:5.0) //compiler error
print(area4) 
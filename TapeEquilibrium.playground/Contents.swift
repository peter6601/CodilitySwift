
public func solution(_ A : inout [Int]) -> Int {
    var minimum = Int.max
    let total = A.reduce( 0, +)
    var tempTotal = 0
    for index in 0..<A.count - 1 {
        tempTotal += A[index]
        let number = abs(total - tempTotal * 2)
        if number < minimum {
            minimum = number
        }
    }
    return minimum
}


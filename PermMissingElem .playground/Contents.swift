public func solution(_ A : inout [Int]) -> Int {
    let count = A.count
    let listSum = A.reduce(0, +)
    let total = (count + 1) * (count + 2) / 2
    return total - listSum
}


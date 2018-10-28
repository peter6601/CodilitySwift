public func solution(_ X : Int, _ A : inout [Int]) -> Int {
    var list = Set<Int>()
    let count = A.count
    for index in 0..<count {
        if A[index] <= X {
            list.insert(A[index])
        }
        if list.count == X {
            return index
        }
    }
    return -1
}

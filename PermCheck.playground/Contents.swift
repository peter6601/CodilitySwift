
public func solution(_ A : inout [Int]) -> Int {
    var list = Set<Int>()
    let count = A.count

    for index in 0..<count {
        if A[index] > count {
            return 0
        } else {
            list.insert(A[index] )
        }
    }
    return count == list.count ? 1 : 0
}

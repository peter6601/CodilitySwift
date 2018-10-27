
public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    
    if A.isEmpty {
        return A
    }
    for _ in 0..<K {
        A.insert(A.removeLast(), at: 0)
    }
    return A
}


public func solution(_ A : inout [Int]) -> Int {
    
    var number = 0
    for index in 0..<A.count {
        
        number ^= A[index]
    }
    return number
}




public func solution(_ A : inout [Int]) -> Int {
    var checkList = [Int: Bool]()
    for index in 0..<A.count {
       checkList[A[index]] = true
    }
    var i = 1
    while true {
        if checkList[i] == nil {
            return i
        }
        i += 1
    }
}


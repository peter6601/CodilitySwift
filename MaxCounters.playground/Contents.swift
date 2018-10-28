public func solution(_ N : Int, _ A : inout [Int]) -> [Int] {
    var maxCount = 0
    var lastMax = 0
    var tempList = [Int](repeating: 0, count: N)
    for index in 0..<A.count {
        if A[index] <= N {
            if tempList[A[index] - 1] >= lastMax {
                tempList[A[index] - 1] += 1
                if tempList[A[index] - 1] > maxCount {
                    maxCount = tempList[A[index] - 1]
                }
            } else {
                tempList[A[index] - 1] = lastMax
                tempList[A[index] - 1] += 1
                if tempList[A[index] - 1] > maxCount {
                    maxCount = tempList[A[index] - 1]
                }
            }
        } else {
            lastMax = maxCount
        }
    }
    
    for index in 0..<tempList.count {
        if tempList[index] < lastMax {
            tempList[index] = lastMax
        }
    }
    return tempList
}

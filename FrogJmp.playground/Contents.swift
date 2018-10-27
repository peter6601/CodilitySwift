
public func solution(_ X : Int, _ Y : Int, _ D : Int) -> Int {
    let number = (Y - X)
    let times = (number / D)
    return (number % D) > 0 ? times + 1: times
}



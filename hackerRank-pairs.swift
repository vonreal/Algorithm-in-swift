func pairs(k: Int, arr: [Int]) -> Int {
    var arr2 = [Int]()
    
    var count = 0
    for value in arr.sorted() { //sorted() O(n log n)
        if arr2.contains(value - k) { //contains() O(n)
            count += 1
        }
        arr2.append(value) // append() O(1)
    }
    return count
}

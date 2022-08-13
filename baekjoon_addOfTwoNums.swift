let _ = readLine()
let arr = readLine()!.split(separator: " ").map { Int($0)! }
let k = Int(readLine()!)!
var resultDic = [Int:Int]()

var count = 0
for value in arr.sorted() {
    let differnece = k - value
    if resultDic[differnece] != nil {
        count += 1
    }
    resultDic[value] = 1
}
print(count)

func solution(_ input: String) {
    let numbers = input.split(separator: " ").map{ Int($0)! }
    let N = numbers[0]
    let K = numbers[1]

    var count = 0
    for num in 1...N {
        if (N % num == 0) {
            count += 1
        }
        if (count == K) {
            print(num)
            return
        }
    }
    print(-1)
}

solution("8 4")

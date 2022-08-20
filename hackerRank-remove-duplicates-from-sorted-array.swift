func solution() -> (Int, [Int]) {
    let _ = readLine()
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    var count = 0
    for value in arr {
        if value != arr[count] {
            count += 1
            arr[count] = value
        }
    }
    arr.removeLast(arr.count - 1 - count)
    print(count + 1)
    return (count + 1, arr)
}

solution()

/*
  앞서 푼 leetcode문제와 동일하나, leetcode에서는 앞에서 중복을 제거하면 이후의 중복은 제거하지 않아도 된다고 명시되어 있습니다.
  하지만 해커랭크에서는 
  "Given input array A = [1,1,2],
  Your function should return length = 2, and A is now [1,2]."
  위와 같이 완전 중복이 사라진 배열을 가지라고 나와있어서, 제거해주는 부분을 추가로 삽입했습니다.
  arr.removeLast의 시간 복잡도는 O(k)로 여기서 k는 파라미터로 지정된 요소의 갯수를 의미합니다. 삭제할 요소가 많으면 많을수록 복잡도의 값이 올라가게 됩니다.
  문제 출처: https://www.hackerrank.com/contests/doyoulikeit/challenges/remove-duplicates-from-sorted-array/problem
*/

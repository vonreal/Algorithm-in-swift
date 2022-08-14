// 50ms
class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var nonDup = 0
        for index in 1..<nums.count {
            if nums[index] != nums[nonDup] {
                nonDup += 1
                nums[nonDup] = nums[index]
            }
        }
        return nonDup + 1
    }
}

// remove() 사용 160ms
// class Solution {
//     func removeDuplicates(_ nums: inout [Int]) -> Int {
//         var subtractNum = 0
//         var cmpNum = nums[0]
//         for (index, value) in nums.enumerated() {
//             if cmpNum == value && index != 0 {
//                 nums.remove(at: index - subtractNum)
//                 subtractNum += 1
//             } else {
//                 cmpNum = value
//             }
//         }
//         return nums.count
//     }
// }

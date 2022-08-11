class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dictionary = [Int : Int]()

        for (index, num) in nums.enumerated() {
            var remains = target - num
            if let other = dictionary[remains] {
                return [index, other]
            } 

            dictionary[num] = index
        }

        return [Int]()
    }
}

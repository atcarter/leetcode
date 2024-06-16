# @param {Integer[]} nums
# @return {Integer[][]}
# TC: O(nlogn) + O(n^2) simplifies to O(n^2)
# SC: O(1) for Ruby sort (which uses quick sort)
def three_sum(nums)
  output = []
  nums.sort!

  nums.each_with_index do |num, i|
    break if num > 0

    next if i > 0 && nums[i - 1] == nums[i]

    left = i + 1
    right = nums.length - 1

    while left < right
      sum = num + nums[left] + nums[right]

      if sum > 0
        right -= 1
      elsif sum < 0
        left += 1
      else
        output << [num, nums[left], nums[right]]
        left += 1
        right -= 1
      end
    end
  end

  output.uniq
end

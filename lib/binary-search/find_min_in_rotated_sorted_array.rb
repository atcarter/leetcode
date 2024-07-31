# @param {Integer[]} nums
# @return {Integer}
# TC: O(log(n))
# SC: O(1)
def find_min(nums)
  left = 0
  right = nums.length - 1
  min = nums[left]

  while left <= right
    if nums[left] < nums[right]
      return [nums[left], min].min
    end

    mid = (left + right) / 2

    current_num = nums[mid]
    min = [current_num, min].min

    if current_num >= nums[left]
      left = mid + 1
    else
      right = mid - 1
    end
  end

  min
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
# TC: O(log(n))
# SC: O(1)
def search(nums, target)
  left = 0
  right = nums.length - 1

  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      return mid
    end

    if nums[left] <= nums[mid]
      if target > nums[mid] || target < nums[left]
        left = mid + 1
      else
        right = mid - 1
      end
    else
      if target < nums[mid] || target > nums[right]
        right = mid - 1
      else
        left = mid + 1
      end
    end

  end

  -1
end

# @param {Integer[]} height
# @return {Integer}
# TC: O(n)
# SC: O(1)
def trap(height)
  left = 0
  left_max = height[left]
  right = height.length - 1
  right_max = height[right]
  amount = 0

  while left < right
    if left_max <= right_max
      left += 1
      left_max = [left_max, height[left]].max
      difference = left_max - height[left]
      amount += difference
    else
      right -= 1
      right_max = [right_max, height[right]].max
      difference = right_max - height[right]
      amount += difference
    end
  end
  
  amount
end
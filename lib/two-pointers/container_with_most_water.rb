# @param {Integer[]} height
# @return {Integer}
# TC: O(n)
# SC: O(1)
def max_area(height)
  max = 0
  left = 0
  right = height.length - 1

  while left < right
    area = (right - left) * [height[left], height[right]].min

    max = area if area > max

    if height[left] <= height[right]
      left += 1
    else
      right -= 1
    end
  end

  max
end

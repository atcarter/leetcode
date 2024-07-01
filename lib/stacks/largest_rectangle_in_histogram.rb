# @param {Integer[]} heights
# @return {Integer}
# TC: O(n)
# SC: O(n)
def largest_rectangle_area(heights)
  max_area = 0
  stack = [] # stores [index, height]

  heights.each_with_index do |current_height, current_index|
    start = current_index
    while !stack.empty? && stack[-1][1] > current_height
      old_index, old_height = stack.pop
      width = current_index - old_index
      max_area = [max_area, old_height * width].max
      start = old_index
    end
    index_height = [start, current_height]
    stack << index_height
  end

  stack.each do |index_height|
    width = heights.length - index_height[0]
    max_area = [max_area, index_height[1] * width].max
  end

  max_area
end

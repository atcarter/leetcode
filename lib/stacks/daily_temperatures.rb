# @param {Integer[]} temperatures
# @return {Integer[]}
# TC: O(n)
# SC: O(n)
def daily_temperatures(temperatures)
  stack = []
  result = Array.new(temperatures.length, 0)

  temperatures.each_with_index do |temperature, current_day|
    while stack.length > 0 && temperatures[stack[-1]] < temperature
      previous_day = stack.pop
      result[previous_day] = current_day - previous_day
    end
    stack << current_day
  end

  result
end

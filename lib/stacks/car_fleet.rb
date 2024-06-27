# @param {Integer} target
# @param {Integer[]} position
# @param {Integer[]} speed
# @return {Integer}
# TC: O(nlogn)
# SC: O(n)
def car_fleet(target, position, speed)
  stack = []
  position_speed = position.zip(speed).sort

  position_speed.reverse_each do |pos_speed|
    stack << (target - pos_speed[0]).to_f / (pos_speed[1])
    if stack.length > 1 && stack[-1] <= stack[-2]
      stack.pop
    end
  end

  stack.length
end

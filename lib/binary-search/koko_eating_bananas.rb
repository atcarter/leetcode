# @param {Integer[]} piles
# @param {Integer} h
# @return {Integer}
# TC: O(log(max_piles) * piles)
# SC: O(1)
def min_eating_speed(piles, h)
  left = 1
  right = piles.max
  result = right

  while left <= right
    k = (left + right) / 2
    hours = 0

    piles.each do |pile|
      hours += (pile / k.to_f).ceil
    end

    if hours <= h
      result = [k, result].min
      right = k - 1
    else
      left = k + 1
    end
  end

  result
end

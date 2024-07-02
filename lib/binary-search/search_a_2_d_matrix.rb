# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
# TC: O(logn)
# SC: O(1)
def search_matrix(matrix, target)
  m = matrix.length
  n = matrix[0].length
  left = 0
  right = m * n - 1

  while left <= right
    mid = (left + right) / 2
    row = mid / n
    col = mid % n

    if matrix[row][col] == target
      return true
    elsif matrix[row][col] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end

  false
end

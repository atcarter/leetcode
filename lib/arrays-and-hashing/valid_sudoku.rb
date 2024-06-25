# @param {Character[][]} board
# @return {Boolean}
# TC: O(9^2)
# SC: O(9^2) simplified.
def is_valid_sudoku(board)
  row_set = Array.new(9) { Set.new }
  column_set = Array.new(9) { Set.new }
  square_set = Array.new(3) { Array.new(3) { Set.new } }

  (0...9).each do |row|
    (0...9).each do |col|
      if board[row][col] == "."
        next
      elsif row_set[row].add?(board[row][col]).nil?
        return false
      elsif column_set[col].add?(board[row][col]).nil?
        return false
      elsif square_set[row / 3][col / 3].add?(board[row][col]).nil?
        return false
      end
    end
  end

  true
end

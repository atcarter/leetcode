RSpec.describe "TwoSumIiSortedInputArray" do
  context "given a sorted input array and a target integer" do
    it "returns the 1-indexed indices of the two numbers that sum to target" do
      numbers_one = [2, 7, 11, 15]
      target_one = 9
      numbers_two = [2, 3, 4]
      target_two = 6
      numbers_three = [-1, 0]
      target_three = -1

      expect(two_sum_ii(numbers_one, target_one)).to eq([1, 2])
      expect(two_sum_ii(numbers_two, target_two)).to eq([1, 3])
      expect(two_sum_ii(numbers_three, target_three)).to eq([1, 2])
    end
  end
end

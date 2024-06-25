RSpec.describe "LongestConsectiveSequence" do
  context "when the input array is [100,4,200,1,3,2]" do
    let(:nums) do
      [100, 4, 200, 1, 3, 2]
    end

    it "returns 4" do
      expect(longest_consecutive(nums)).to eq(4)
    end
  end

  context "when the input array is [0,3,7,2,5,8,4,6,0,1]" do
    let(:nums) do
      [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]
    end

    it "returns 9" do
      expect(longest_consecutive(nums)).to eq(9)
    end
  end
end

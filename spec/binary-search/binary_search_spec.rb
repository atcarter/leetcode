RSpec.describe "BinarySearch" do
  describe "#search" do
    context "when target is in nums" do
      it "returns the index of target" do
        nums = [-1, 0, 3, 5, 9, 12]
        target = 9

        expect(search(nums, target)).to eq(4)
      end
    end

    context "when target is the only value in nums" do
      it "returns 0" do
        nums = [5]
        target = 5

        expect(search(nums, target)).to eq(0)
      end
    end

    context "when target is NOT in nums" do
      it "returns -1" do
        nums = [-1, 0, 3, 5, 9, 12]
        target = 2

        expect(search(nums, target)).to eq(-1)
      end
    end
  end
end

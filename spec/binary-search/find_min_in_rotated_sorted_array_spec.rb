RSpec.describe "FindMinInRotatedSortedArray" do
  describe "#find_min" do
    context "when nums is [3,4,5,1,2]" do
      let(:nums) { [3, 4, 5, 1, 2] }
      it "returns 1" do
        expect(find_min(nums)).to eq(1)
      end
    end
    context "when nums is [4,5,6,7,0,1,2]" do
      let(:nums) { [4, 5, 6, 7, 0, 1, 2] }
      it "returns 0" do
        expect(find_min(nums)).to eq(0)
      end
    end
    context "when nums is  [11,13,15,17]" do
      let(:nums) { [11, 13, 15, 17] }
      it "returns 11" do
        expect(find_min(nums)).to eq(11)
      end
    end
    context "when nums is  [2,1]" do
      let(:nums) { [2, 1] }
      it "returns 1" do
        expect(find_min(nums)).to eq(1)
      end
    end
  end
end

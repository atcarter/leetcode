RSpec.describe "SearchInRotatedSortedArray" do
  describe "#search" do
    context "when nums is [4,5,6,7,0,1,2] and target is 0" do
      let(:nums) { [4, 5, 6, 7, 0, 1, 2] }
      let(:target) { 0 }

      it "returns 4" do
        expect(search(nums, target)).to eq(4)
      end
    end

    context "when nums is [4,5,6,7,0,1,2] and target is 3" do
      let(:nums) { [4, 5, 6, 7, 0, 1, 2] }
      let(:target) { 3 }

      it "returns -1" do
        expect(search(nums, target)).to eq(-1)
      end
    end

    context "when nums is [1] and target is 0" do
      let(:nums) { [1] }
      let(:target) { 0 }

      it "returns -1" do
        expect(search(nums, target)).to eq(-1)
      end
    end

    context "when nums is [5,1,3] and target is 5" do
      let(:nums) { [5, 1, 3] }
      let(:target) { 5 }

      it "returns 0" do
        expect(search(nums, target)).to eq(0)
      end
    end
  end
end

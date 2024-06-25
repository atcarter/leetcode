RSpec.describe "ContainerWithMostWater" do
  context "given height = [1,8,6,2,5,4,8,3,7]" do
    it "returns 49" do
      height = [1, 8, 6, 2, 5, 4, 8, 3, 7]

      expect(max_area(height)).to eq(49)
    end
  end

  context "given height = [1, 1]" do
    it "returns 1" do
      height = [1, 1]

      expect(max_area(height)).to eq(1)
    end
  end
end

RSpec.describe "SearchA2DMatrix" do
  let(:matrix) do
    [
      [1, 3, 5, 7],
      [10, 11, 16, 20],
      [23, 30, 34, 60]
    ]
  end
  describe "#search_matrix" do
    context "when target is in 2-D matrix" do
      it "returns true" do
        target = 3

        expect(search_matrix(matrix, target)).to eq(true)
      end
    end
    context "when target is NOT in 2-D matrix" do
      it "returns false" do
        target = 13

        expect(search_matrix(matrix, target)).to eq(false)
      end
    end
  end
end

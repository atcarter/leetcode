RSpec.describe "TwoSum" do
  it "returns exactly one solution given [2, 7, 11, 15]" do
    nums = [2, 7, 11, 15]
    target = 9

    expect(two_sum(nums, target)).to contain_exactly(0, 1)
  end

  it "returns exactly one solution given [2, 7, 11, 15]" do
    nums = [3, 2, 4]
    target = 6

    expect(two_sum(nums, target)).to contain_exactly(1, 2)
  end

  it "returns exactly one solution given [2, 7, 11, 15]" do
    nums = [3, 2, 4]
    target = 6

    expect(two_sum(nums, target)).to contain_exactly(1, 2)
  end
end

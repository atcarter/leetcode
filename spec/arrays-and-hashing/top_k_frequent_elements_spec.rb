RSpec.describe 'TopKFrequentElements' do
  it 'returns the top k frequent elements' do
    nums = [1, 1, 1, 2, 2, 3]
    k = 2

    expect(top_k_frequent(nums, k)).to contain_exactly(1, 2)
  end

  it 'returns the top k frequent elements' do
    nums = [1]
    k = 1

    expect(top_k_frequent(nums, k)).to eq([1])
  end

  context 'when there are frequent 0s' do
    it 'returns 0' do
      nums = [3, 0, 1, 0]
      k = 1

      expect(top_k_frequent(nums, k)).to eq([0])
    end
  end
end

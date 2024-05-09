RSpec.describe 'ContainsDuplicate' do
  context 'when nums array contains unique integers' do
    it 'returns false' do
      nums = [1,2,3,4]

      expect(contains_duplicate(nums)).to eq(false)
    end
  end

  context 'when nums array contains duplicate integers' do
    it 'returns true' do
      nums = [1,2,3,1]

      expect(contains_duplicate(nums)).to eq(true)
    end
  end
end

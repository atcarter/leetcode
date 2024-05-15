RSpec.describe 'ProductOfArrayExceptSelf' do
  it 'returns an array containing the product of all the elements except that index' do
    nums = [1, 2, 3, 4]

    expect(product_except_self(nums)).to eq([24, 12, 8, 6])
  end

  it 'returns an array containing the product of all the elements except that index' do
    nums = [-1, 1, 0, -3, 3]

    expect(product_except_self(nums)).to eq([0, 0, 9, 0, 0])
  end
end

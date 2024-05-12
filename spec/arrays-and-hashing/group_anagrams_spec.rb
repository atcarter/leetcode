RSpec.describe 'GroupAnagrams' do
  it 'returns a list of anagrams grouped together' do
    strings = ["eat", "tea", "tan", "ate", "nat", "bat"]

    expect(group_anagrams(strings)[0]).to contain_exactly("ate", "eat", "tea")
    expect(group_anagrams(strings)[1]).to contain_exactly("nat", "tan")
    expect(group_anagrams(strings)[2]).to contain_exactly("bat")
  end

  it 'returns a list of anagrams grouped together' do
    strings = [""]

    expect(group_anagrams(strings)).to eq([[""]])
  end

  it 'returns a list of anagrams grouped together' do
    strings = ["a"]

    expect(group_anagrams(strings)).to eq([["a"]])
  end
end

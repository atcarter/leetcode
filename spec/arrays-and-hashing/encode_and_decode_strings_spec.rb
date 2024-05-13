RSpec.describe 'EncodeAndDecodeStrings' do
  it 'decodes an encoded list of strings' do
    string_list = ["Hello", "World"]

    expect(decode(encode(string_list))).to eq(["Hello", "World"])
  end

  it 'decodes an encoded list containing an empty string' do
    string_list = [""]

    expect(decode(encode(string_list))).to eq([""])
  end
end

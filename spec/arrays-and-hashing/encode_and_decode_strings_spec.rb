RSpec.describe "EncodeAndDecodeStrings" do
  it "decodes an encoded list of strings" do
    string_list = %w[Hello World]

    expect(decode(encode(string_list))).to eq(%w[Hello World])
  end

  it "decodes an encoded list containing an empty string" do
    string_list = [""]

    expect(decode(encode(string_list))).to eq([""])
  end
end

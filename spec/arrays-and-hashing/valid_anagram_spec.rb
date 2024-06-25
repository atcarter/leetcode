RSpec.describe "ValidAnagram" do
  let(:string_one) { "rat" }
  let(:string_two) { "tar" }

  context "when both strings are anagrams" do
    it "returns true" do
      expect(is_anagram(string_one, string_two)).to eq(true)
    end
  end

  context "when both strings are NOT anagrams" do
    let(:string_one) { "rat" }
    let(:string_two) { "car" }

    it "returns false" do
      expect(is_anagram(string_one, string_two)).to eq(false)
    end
  end
end

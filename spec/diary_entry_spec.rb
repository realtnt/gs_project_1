require "diary_entry"

RSpec.describe DiaryEntry do
  context "when passing a valid string" do
    diary = DiaryEntry.new("Pair Programming", "I love pair programming")
    it "should return Pair Programming" do
      result = diary.get_title
      expect(result).to eql("Pair Programming")
    end
    it "should return I love pair programming" do
      result = diary.get_contents
      expect(result).to eql("I love pair programming")
    end
    # it "should return 4" do
    #     result = diary.count_words()
    # end
  end
  context "when passing nil for title and contents" do
    diary = DiaryEntry.new(nil, nil)
    it "should return new title" do
      result = diary.get_title
      expect(result).to eql("new title")
    end
    it "should return no content" do
      result = diary.get_contents
      expect(result).to eql("no content")
    end
  end
end

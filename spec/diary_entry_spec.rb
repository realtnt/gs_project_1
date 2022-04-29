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
    it "should return 4" do
      result = diary.count_words()
      expect(result).to eq 4
    end
    it "should return I love" do
      result = diary.read_chunk(2, 1)
      expect(result).to eq "I love"
    end
    it "should return I love pair" do
      result = diary.read_chunk(2, 1)
      expect(result).to eq "pair programming"
    end
  end

  context "when passing 'I love pair programming I love pair programming'" do
    diary = DiaryEntry.new("Pair Programming", "I love pair programming "*2)
    it "should return I love pair programming" do
      expect(diary.read_chunk(4, 1)).to eq "I love pair programming"
    end
    it "should return I love pair programming" do
      expect(diary.read_chunk(4, 1)).to eq "I love pair programming"
    end
    it "should return I love pair" do
      expect(diary.read_chunk(3, 1)).to eq "I love pair"
    end
    it "should return programming" do
      expect(diary.read_chunk(5, 1)).to eq "programming I love pair programming"
    end
    it "should return I love pair" do
      expect(diary.read_chunk(200, 1)).to eq ("I love pair programming " * 2).strip
    end
    it "should return empty string" do
      expect(diary.read_chunk(200, 0)).to eq ""
    end
  end

  context "when passing a long valid string" do
    diary = DiaryEntry.new("Pair Programming", "hello " * 2000)
    it "should return hello 2000 times!" do
      result = diary.get_contents
      expect(result).to eql("hello " * 2000)
    end
    it "should return 4" do
      result = diary.count_words()
      expect(result).to eq 2000
    end
    xit "should return 1" do
      result = diary.calc_reading_time(200)
      expect(result).to eq 1
    end
    xit "should return 200 hellos" do
      result = diary.read_chunk(200, 1)
      expect(result).to eq ("hello " * 200).strip
    end
  end

  context "when pass an empty content string" do
    diary = DiaryEntry.new("", "")
    it "should return and empty string" do
      result = diary.get_title
      expect(result).to eql("")
    end
    it "should return an empty string" do
      result = diary.get_contents
      expect(result).to eql("")
    end
    it "should return 0" do
      result = diary.count_words
      expect(result).to eq 0
    end
    xit "should return 1" do
      result = diary.calc_reading_time(200)
      expect(result).to eq 0
    end
    xit "should raise an error??" do #??????????????
      result = diary.read_chunk(200, 1)
      expect(result).to eq "new contents"
    end
  end

  context "when passing nil for title and contents" do
    diary = DiaryEntry.new(nil, nil)
    it "should raise an error" do
      result = diary.get_title
      expect(result).to eql("new title")
    end
    it "should raise an error" do
      result = diary.get_contents
      expect(result).to eql("new contents")
    end
    it "should return 2" do
      result = diary.count_words
      expect(result).to eq 2
    end
    it "should return 1" do
      result = diary.calc_reading_time(200)
      expect(result).to eq 1
    end
    xit "should return new contents" do
      result = diary.read_chunk(200, 1)
      expect(result).to eq "new contents"
    end
  end
end

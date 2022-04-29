require 'diary_entry'
require 'diary'

RSpec.describe 'Diary App Integration' do
  context 'adding a diary entry with 2 words' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new('entry_1', 'Hello World!')
    diary.add(diary_entry1)
    it 'should return title' do
      expect(diary.show_all).to eq [diary_entry1]
    end
    it 'should return 2' do
      expect(diary.count_words).to eq 2
    end
    it 'should return 1' do
      expect(diary.reading_time(200)).to eq 1
    end

    

  end
end


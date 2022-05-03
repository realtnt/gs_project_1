require 'diary_entry'
require 'diary'

RSpec.describe 'Diary App Integration' do
  context 'adding a diary entry with 2 words' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new('entry_1', 'Hello World!')
    diary.add(diary_entry1)
    it 'should return an array with the object diary_entry1' do
      expect(diary.show_all).to eq [diary_entry1]
    end
    it 'should return 2' do
      expect(diary.count_words).to eq 2
    end
    it 'should return 1' do
      expect(diary.reading_time(200)).to eq 1
    end
  end

  context 'adding multiple diary entries' do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new('Title 0', 'words ' * 200)
    diary.add(diary_entry_1)
    diary_entry_2 = DiaryEntry.new('Title 1', 'words ' * 201)
    diary.add(diary_entry_2)
    diary_entry_3 = DiaryEntry.new('Title 2', 'words ' * 198)
    diary.add(diary_entry_3)
    diary_entry_4 = DiaryEntry.new('Title 3', 'words ' * 100)
    diary.add(diary_entry_4)
    diary_entry_5 = DiaryEntry.new('Title 4', 'words ' * 200)
    diary.add(diary_entry_5)
    diary_entry_6 = DiaryEntry.new('Title 5', 'words ' * 199)
    diary.add(diary_entry_6)
    diary_entry_7 = DiaryEntry.new('Title 6', 'words ' * 250)
    diary.add(diary_entry_7)
    it 'should return a diary entry object' do
      entry = diary.find_best_entry_for_reading_time(200, 1)
      result = entry.get_title
      expect(result).to eq 'Title 4'
    end
    xit 'should return title' do
      expect(diary.show_all).to eq [diary_entry1]
    end
    xit 'should return 2' do
      expect(diary.count_words).to eq 2
    end
    xit 'should return 1' do
      expect(diary.reading_time(200)).to eq 1
    end
  end
end


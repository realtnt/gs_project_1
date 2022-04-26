require 'count_words'

RSpec.describe 'count_words method' do
  context 'When passed an empty string' do
    it 'should return 0' do
      result = count_words('')
      expect(result).to eq 0
    end
  end

  context 'When passed any string' do
    it 'should return the number of words' do
      result = count_words('hello, world')
      expect(result).to eq 2
    end
  end

  context 'When passed any string' do
    it 'should return the number of words' do
      result = count_words('hello, world wqef wef wef wef')
      expect(result).to eq 6
    end
  end
end

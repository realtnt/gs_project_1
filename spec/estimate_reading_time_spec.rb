require 'estimate_reading_time'

RSpec.describe 'estimate_reading_time method' do

  context 'when passing an empty string' do
    it 'should return 0' do
      result = estimate_reading_time('')
      expect(result).to eq 0
    end
  end

  context 'when passing a string with less than 200 words' do
    it 'should return 1' do
      result = estimate_reading_time('hello')
      expect(result).to eq 1
    end
  end

  context 'when passing a string with less than 200 words' do 
    it 'should return 1' do
      result = estimate_reading_time('hello ' * 199)
      expect(result).to eq 1
    end
  end

  context 'when passing a string with 200 words' do
    it 'should return 1' do
      result = estimate_reading_time('hello ' * 200)
      expect(result).to eq 1
    end
  end

  context 'when passing a string with 1000 words' do
    it 'should return 5' do
      result = estimate_reading_time('hello ' * 1000)
      expect(result).to eq 5
    end
  end

  context 'when passing a string with 9999 words' do
    it 'should return 50' do
      result = estimate_reading_time('hello ' * 9999)
      expect(result).to eq 50
    end
  end

  context 'when passing a string with 10000 words' do
    it 'should return 50' do
      result = estimate_reading_time('hello ' * 10000)
      expect(result).to eq 50
    end
  end

  context 'when text is nil' do
    it 'should throw an error if nil is passing' do
      expect { estimate_reading_time(nil) }.to raise_error('Invalid text.')
    end
  end
end

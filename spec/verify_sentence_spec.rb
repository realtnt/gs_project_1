require 'verify_sentence'

RSpec.describe 'verify_sentence method' do

  context 'when passing an empty string' do
    it 'should return false' do
      result = verify_sentence('')
      expect(result).to eq false
    end
  end

  context 'when passing a string starting with lowercase first letter' do
    it 'should return false' do
      result = verify_sentence('hello')
      expect(result).to eq false
    end
  end

  context 'when passing a string starting with capital letter, ending with excamation mark' do 
    it 'should return true' do
      result = verify_sentence('Hello!')
      expect(result).to eq true
    end
  end

  context 'when passing a string starting with capital letter, ending with question mark' do
    it 'should return true' do
      result = verify_sentence('How are you?')
      expect(result).to eq true
    end
  end

  context 'when passing a string starting with capital letter, ending with period' do
    it 'should return true' do
      result = verify_sentence('I am fine.')
      expect(result).to eq true
    end
  end

  context 'when passing the following string: ...' do
    it 'should return false' do
      result = verify_sentence('...')
      expect(result).to eq false
    end
  end

  context 'when passing: .Hello!' do
    it 'should return false' do
      result = verify_sentence('.Hello!')
      expect(result).to eq false
    end
  end

  context 'when text is nil' do
    it 'should throw an error if nil is passing' do
      expect { verify_sentence(nil) }.to raise_error('Invalid string.')
    end
  end
end

require 'check_todo'

RSpec.describe 'check_todo method' do
  context 'when passing an empty string' do
    it 'should return false' do
      result = check_todo('')
      expect(result).to eq false
    end
  end

  context 'when passing a string without #TODO' do
    it 'should return false' do
      result = check_todo('hello')
      expect(result).to eq false
    end
  end

  context 'when passing a string with #TODO' do
    it 'should return true' do
      result = check_todo('#TODO improve my code')
      expect(result).to eq true
    end
  end

  context 'when passing string: #TODO' do
    it 'should return true' do
      result = check_todo('#TODO')
      expect(result).to eq true
    end
  end

  context 'when passing string: ##TO DO' do
    it 'should return false' do
      result = check_todo('##TO DO')
      expect(result).to eq false
    end
  end

  context 'when passing string: ...' do
    it 'should return false' do
      result = check_todo('...')
      expect(result).to eq false
    end
  end

  context 'when passing nil' do
    it 'should raise an error' do
      expect { check_todo(nil) }.to raise_error 'Invalid string.'
    end
  end
end
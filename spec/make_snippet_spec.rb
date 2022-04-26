require 'make_snippet'

RSpec.describe 'make_snippet' do
  it 'should return empty string if passed an empty string' do
    result = make_snippet('')
    expect(result).to eq('')
  end

  it 'should return the string passed into it if <= 5 words' do
    result = make_snippet('one two three four five')
    expect(result).to eq('one two three four five')
  end

  it 'should return the first 5 words and then ... if > 5 words' do
    result = make_snippet('one two three four five six')
    expect(result).to eq('one two three four five...')
  end
end

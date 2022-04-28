require 'grammar_stats'

RSpec.describe GrammarStats do
  stats = GrammarStats.new

  context 'After initializing the object' do
    it 'should return No checks done yet' do
      result = stats.percentage_good
      expect(result).to eq 'No checks done yet'
    end
  end

  context 'When passing an empty text' do
    it 'should return false' do
      result = stats.check('')
      expect(result).to eq false
    end

    it 'should return 0' do
      result = stats.percentage_good
      expect(result).to eq 0
    end
  end

  context 'When passing a valid text - exclamation mark' do
    it 'should return true' do
      result = stats.check('Hello world!')
      expect(result).to eq true
    end

    it 'should return 50' do
      result = stats.percentage_good
      expect(result).to eq 50
    end
  end

  context 'When passing a valid text - fullstop' do
    it 'should return true' do
      result = stats.check('Hello world.')
      expect(result).to eq true
    end

    it 'should return 33' do
      result = stats.percentage_good
      expect(result).to eq 66
    end
  end

  context 'When passing a valid text - question mark' do
    it 'should return true' do
      result = stats.check('Hello world?')
      expect(result).to eq true
    end

    it 'should return 75' do
      result = stats.percentage_good
      expect(result).to eq 75
    end
  end

  context 'When passing invalid text -> hello' do
    it 'should return false' do
      result = stats.check('hello')
      expect(result).to eq false
    end

    it 'should return 60' do
      result = stats.percentage_good
      expect(result).to eq 60
    end
  end

  context 'When passing an invalid text -> !Hello!' do
    it 'should return false' do
      result = stats.check('!Hello!')
      expect(result).to eq false
    end
  end

  context 'When passing an text -> .Hello.' do
    it 'should return false' do
      result = stats.check('.Hello.')
      expect(result).to eq false
    end
  end

  context 'When passing an text -> <space>Hello.' do
    it 'should return false' do
      result = stats.check(' Hello.')
      expect(result).to eq false
    end
  end

  context 'When passing ...' do
    it 'should return false' do
      result = stats.check('...')
      expect(result).to eq false
    end

    it 'should return 33' do
      result = stats.percentage_good
      expect(result).to eq 33
    end
  end

  context 'When passing nil' do
    it 'should raise an error' do
      expect { stats.check(nil) }.to raise_error 'Argument is not of type string'
    end

    it 'should return 33' do
      result = stats.percentage_good
      expect(result).to eq 33
    end  
  end

end

        

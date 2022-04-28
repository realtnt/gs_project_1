require 'todo_list'

RSpec.describe TodoList do
  context 'When adding a valid task' do
    todo_list = TodoList.new
    todo_list.add("Walk the dog")
    it 'should return Walk the dog' do
      result = todo_list.show_tasks
      expect(result).to eq(['Walk the dog'])
    end

    it 'should return true' do
      result = todo_list.complete(0)
      expect(result).to eq true
    end

    it 'should return []' do
      result = todo_list.show_tasks
      expect(result).to eq []
    end
  end

  context 'When adding two valid tasks' do
    todo_list = TodoList.new
    todo_list.add("Walk the dog")
    todo_list.add("Feed the cat")
    it 'should return Walk the dog' do
      result = todo_list.show_tasks
      expect(result).to eq(['Walk the dog', 'Feed the cat'])
    end

    it 'should return true' do
      result = todo_list.complete(1)
      expect(result).to eq true
    end

    it 'should return ["Walk the dog"]' do
      result = todo_list.show_tasks
      expect(result).to eq ['Walk the dog']
    end

    it 'should return true' do
      result = todo_list.complete(0)
      expect(result).to eq true
    end

    it 'should return []' do
      result = todo_list.show_tasks
      expect(result).to eq []
    end
  end

  context 'When adding an invalid task' do
    todo_list = TodoList.new
    it 'should throw an error' do
      expect { todo_list.add(nil)}.to raise_error 'Invalid input'
    end

    it 'should return []' do
      result = todo_list.show_tasks
      expect(result).to eq []
    end
  end
end
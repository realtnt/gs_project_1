require "todo"
require "todo_list"

RSpec.describe "todo_list integration:" do
  context "one item added" do
    todo_item_1 = Todo.new('Todo 1')
    todo_list = TodoList.new
    todo_list.add(todo_item_1)
    it 'should return a list of one item' do
      expect(todo_list.incomplete).to eq [todo_item_1]
    end
    it 'should return an empty list' do
      expect(todo_list.complete).to eq []
    end
  end
  context "one item completed" do
    todo_item_1 = Todo.new('Todo 1')
    todo_list = TodoList.new
    todo_list.add(todo_item_1)
    todo_list.give_up!
    it 'should return an empty list' do
      expect(todo_list.incomplete).to eq []
    end
    it 'should return a list of one item' do
      expect(todo_list.complete).to eq [todo_item_1]
    end
  end
  context "multiple items added" do
    todo_item_1 = Todo.new('Todo 1')
    todo_item_2 = Todo.new('Todo 2')
    todo_item_3 = Todo.new('Todo 3')
    todo_list = TodoList.new
    todo_list.add(todo_item_1)
    todo_list.add(todo_item_2)
    todo_list.add(todo_item_3)
    it 'should return a list of one item' do
      expect(todo_list.incomplete).to eq [todo_item_1, todo_item_2, todo_item_3]
    end
    it 'should return an empty list' do
      expect(todo_list.complete).to eq []
    end
  end
  context "one item completed" do
    todo_item_1 = Todo.new('Todo 1')
    todo_item_2 = Todo.new('Todo 2')
    todo_item_3 = Todo.new('Todo 3')
    todo_list = TodoList.new
    todo_list.add(todo_item_1)
    todo_list.add(todo_item_2)
    todo_list.add(todo_item_3)
    todo_list.give_up!
    it 'should return an empty list' do
      expect(todo_list.incomplete).to eq []
    end
    it 'should return a list of one item' do
      expect(todo_list.complete).to eq [todo_item_1, todo_item_2, todo_item_3]
    end
  end
  context "If non Todo object is passed" do
    todo_list = TodoList.new
    it 'should raise an error' do
      expect{todo_list.add("item 1")}.to raise_error "This is not a Todo object."
    end
  end
end

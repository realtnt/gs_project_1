require "todo"

RSpec.describe Todo do
  context "when adding one todo item" do
    todo_one = Todo.new("todo one")
    it "return todo one" do
      expect(todo_one.task).to eql("todo one")
    end
    it "return false" do
      expect(todo_one.done?).to eql(false)
    end
    it "return true" do
      todo_one.mark_done!
      expect(todo_one.done?).to eql(true)
    end
  end
  context "when adding a none string item" do
    it "nil should raise an error" do
      expect { Todo.new(nil) }.to raise_error("invalid task")
    end
    it "\"\" should raise an error" do
      expect { Todo.new("") }.to raise_error("invalid task")
    end
    it "\"      \" should raise an error" do
      expect { Todo.new("      ") }.to raise_error("invalid task")
    end
  end
end

require 'rails_helper'

describe Todo do
  describe '#completed?' do
    let(:todo) { Todo.new }

    it 'returns true if completed' do
      todo.completed_at = Time.current
      expect(todo).to be_completed
    end

    it 'returns false if incomplete' do
      todo.completed_at = nil
      expect(todo).to_not be_completed
    end
  end

  describe '#complete!' do
    let(:todo) { Todo.create(completed_at: nil) }
    it 'updates completed_at' do
      todo.complete!
      expect(todo).to be_completed
    end
  end
end

class TodosController < ApplicationController
  expose(:todo)
  expose(:todos) { Todo.all }

  def create
    todo.save
    redirect_to todos_path
  end
end

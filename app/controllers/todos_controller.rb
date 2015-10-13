class TodosController < ApplicationController
  expose(:todo)
  expose(:todos) { Todo.all }

  def create
    todo.save
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end

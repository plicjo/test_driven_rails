class TodosController < ApplicationController
  before_filter :authenticate

  expose(:todo)
  expose(:todos) { current_user.todos }

  def create
    current_user.todos.create(todo_params)
    #redirect_to todos_path
    #redirect_to '/'
    redirect_to '/todos'
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end
end

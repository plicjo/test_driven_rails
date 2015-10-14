class TodosController < ApplicationController
  before_filter :authenticate

  expose(:todo)
  expose(:todos) { Todo.where(email: session[:current_email]) }

  def create
    todo.save
    redirect_to todos_path
  end

  private

  def todo_params
    params.require(:todo)
          .permit(:title)
          .merge(email: session[:current_email])
  end
end

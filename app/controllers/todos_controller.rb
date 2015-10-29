class TodosController < ApplicationController
  before_filter :authenticate

  expose(:todo)
  expose(:todos) { current_user.todos }

  def create
    todo_params = params[:todo]
    current_user.todos.create(title: todo_params[:title])
    redirect_to '/'
  end

end

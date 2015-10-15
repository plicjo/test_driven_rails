class CompletionsController < ApplicationController
  expose(:todo) do
    current_user.todos.find(params[:todo_id])
  end

  def create
    todo.complete!
    redirect_to todos_path
  end

end

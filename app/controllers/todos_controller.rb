class TodosController < ApplicationController

  before_filter :authenticate

  expose(:todo)
  expose(:todos) { current_user.todos }

  def create
    current_user.todos.create( { title: params[:todo][:title] } )
    redirect_to todos_path
  end

end

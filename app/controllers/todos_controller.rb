class TodosController < ApplicationController
#   before_filter :authenticate

#   expose(:todo)
#   expose(:todos) { current_user.todos }

   def create
     current_user.todos.create({})
     redirect_to todos_path
   end

#   private

#   def todo_params
#     params.require(:todo).permit(:title)
#   end
end

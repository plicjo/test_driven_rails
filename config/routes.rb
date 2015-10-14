Rails.application.routes.draw do
  root to: 'todos#index'

  resources :sessions, only: %i(new create)

  resources :todos, only: [:new, :create, :index] do
    resource :completion, only: :create
  end
end

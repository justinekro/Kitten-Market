Rails.application.routes.draw do
  get 'items/index'

  get 'items/new'

  get 'items/create'

  get 'items/edit'

  get 'items/destroy'

  devise_for :users, controllers: { sessions: 'users/sessions' }
  root 'home#index'
  get 'users/:id', to: "users#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

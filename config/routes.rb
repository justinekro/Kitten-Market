Rails.application.routes.draw do
	root 'home#index'
	resources :items
  devise_for :users, controllers: { sessions: 'users/sessions' }
  get 'users/:id', to: "users#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

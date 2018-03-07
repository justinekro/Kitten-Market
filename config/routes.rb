Rails.application.routes.draw do
	root 'items#index'
	resources :orders
	resources :carts
	resources :items
  devise_for :users, controllers: { sessions: 'users/sessions' }
  get 'users/:id', to: "users#show"
  get 'items/add/:id', to: "carts#add_to_cart", as: "add_to_cart"
  get 'carts/remove/:id', to: "carts#remove_from_cart", as: "remove_from_cart"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

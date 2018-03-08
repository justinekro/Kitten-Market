Rails.application.routes.draw do
  get 'users/show'

	root 'items#index'
	resources :orders
	resources :carts
	resources :items
  resources :charges, only:[:new,:create]
  #devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }

  get 'users/:id', to: "users#show", as: "user_profile"
  get 'carts/remove/:id', to: "carts#remove_from_cart"
	post 'carts/:id', to: "orders#pay_cart", as: "paiement_panier"
  get 'items/add/:id', to: "carts#add_to_cart", as: "add_to_cart"
  get 'carts/remove/:id', to: "carts#remove_from_cart", as: "remove_from_cart"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

devise_for :users,
    path: '',
    controllers: {
       sessions: "users/sessions",
       registrations: "users/registrations" },
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      sign_up: 'register',
      edit: 'settings',
    }

#  devise_for :admins,
#    :skip => [:registrations, :passwords],
#    path: 'admin',
#    controllers: { sessions: "admins/sessions" },
#    path_names: {
#      sign_in: 'login',
#      sign_out: 'logout'
#    }


end

Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  resources :photos
  resources :profiles, only: [:new, :edit, :create, :update]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  root to: "products#index"

end

Rails.application.routes.draw do

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get "/pages/:page" => "pages#show"

  get 'pages/home'

  root 'products#index'

  post '/add_to_cart/:product_id' => 'carts#add_to_cart', :as => 'add_to_cart'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :products
  resources :photos
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :carts
  resources :order_items, only: [:create, :update, :destroy]
  resources :charges
  resources :orders
  resources :favorite_products, only: [:create, :destroy, :index]

  root to: "products#index"

end

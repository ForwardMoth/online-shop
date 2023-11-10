Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'products#index'
  get 'orders/add', to: 'orders#add'
  get 'orders', to: 'orders#index'
  delete 'orders/:id', to: 'orders#destroy'
end

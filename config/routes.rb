Rails.application.routes.draw do
  root 'catalogs#index'

  get '/add_publisher', to: 'admin/publishers#new', as: 'add_publisher'
  get '/add_book', to: 'admin/books#new', as: 'add_book'
  get '/signup', to: 'users#new', as: 'signup'
  
  resources :authors
  resources :users
  resources :publishers, except: [:new]
  resources :books, except: [:new]
end

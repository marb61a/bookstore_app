Rails.application.routes.draw do
  get 'sessions/new'

  root 'catalogs#index'

  get '/add_publisher', to: 'admin/publishers#new', as: 'add_publisher'
  get '/add_book', to: 'admin/books#new', as: 'add_book'
  get '/signup', to: 'users#new', as: 'signup'
  
  resources :authors
  resources :users
  resources :publishers, except: [:new]
  resources :books, except: [:new]
  resource :session, only: [:create]
end

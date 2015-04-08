Rails.application.routes.draw do
  root 'catalogs#index'
  
  resources :authors
end

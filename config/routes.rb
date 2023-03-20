Rails.application.routes.draw do
  resources :metadata
  resources :metadata_types


  get 'home/about'
  root 'home#index'
end

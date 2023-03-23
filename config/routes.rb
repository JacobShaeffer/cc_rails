Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :contents

  devise_for :users

  resources :metadata_types do
    resources :metadata, except: [:index, :show], controller: 'metadata_types/metadata'
  end

  get 'home/about'
  root 'home#index'
end

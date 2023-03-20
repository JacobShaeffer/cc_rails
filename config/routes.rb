Rails.application.routes.draw do
  resources :metadata_types do
    resources :metadata, except: [:index], controller: 'metadata_types/metadata'
  end


  get 'home/about'
  root 'home#index'
end

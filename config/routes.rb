Rails.application.routes.draw do

  devise_for :users
  # Resource Paths
  resources :reviews
  resources :mangas
  root 'home#home' # Homepage is the root as expected

  get 'response', to: 'home#responsive'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
end
Rails.application.routes.draw do

  resources :manga_lists
  devise_for :users
  # Resource Paths
  resources :reviews
  resources :mangas
  resources :manga_lists
  root 'home#home' # Homepage is the root as expected

  get 'response', to: 'home#responsive'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
end
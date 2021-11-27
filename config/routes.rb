Rails.application.routes.draw do
  resources :reviews
  resources :mangas
  root 'home#home'

  get 'response', to: 'home#responsive'

  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
end
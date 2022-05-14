Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  #get 'home/index'
  resources :emprunt_docs
  resources :empruntordis
  resources :ordinateurs
  resources :documents
  resources :auteurs
  resources :adherents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

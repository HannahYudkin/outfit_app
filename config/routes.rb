Rails.application.routes.draw do
  root "outfits#index"

  devise_for :users
  resources :outfits, only: [:index]
  resources :searches, only: [:new]
  resources :articles, only: [:new, :create]
end

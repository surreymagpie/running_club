Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :memberships, only: [:new, :create, :show]
end

Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'
  resources :projects do
    resources :participants
  end
  resources :users
  resources :likes
end

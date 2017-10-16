Rails.application.routes.draw do
  root 'stores#index'

  namespace :stores, path: ':store', only: [:index] do
    resources :items, only: [:index]
  end

  resources :items, only: [:index, :show]
  resources :orders, only: [:index, :show]
  resources :users, only: [:index, :show]
end

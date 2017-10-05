Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users


  root to: "food_carts#index"

  resources :conversations, only: [:index, :show] do
    resources :messages
  end

  resources :messages, only: [:receive] do
    collection do
      post 'receive'
    end
  end

  mount ActionCable.server => '/cable'
end

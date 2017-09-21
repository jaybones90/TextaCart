Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users


  root to: "food_carts#index"

  resources :conversations, only: [:index, :show]

  resources :messages do
    collection do
      post 'receive'
      # post 'reply'
      # get 'reply'
      # get 'text_interface'
    end
  end


end

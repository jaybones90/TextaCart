Rails.application.routes.draw do

  get 'hello_world', to: 'hello_world#index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: "pages#home"
  # devise_for :users
  #   devise_scope :user do
  #     authenticated :user do
  #       root :to => 'conversations#index'
  #     end
  #     unauthenticated :user do
  #       root :to => 'devise/registrations#new', as: :unauthenticated_root
  #     end
  #   end



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

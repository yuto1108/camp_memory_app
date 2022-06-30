Rails.application.routes.draw do
  devise_for :users
  root to: "camps#index"
  resources :camps do
    collection do
      get "search"
    end
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only:[:index, :show, :edit, :update] do
    member do
      get :followeds, :followers
    end
    resource :relationships, only: [:create, :destroy]
  end
end
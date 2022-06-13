Rails.application.routes.draw do
  root to: "camps#index"
  resources :camps, only: [:index, :new, :create]
end








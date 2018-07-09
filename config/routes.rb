Rails.application.routes.draw do

  root 'sessions#new'
  
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  resources :tops
  resources :twiclos do
    collection do
      post :confirm
    end
  end
end
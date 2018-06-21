Rails.application.routes.draw do
  root to: "tops#index"
  resources :tops
  resources :twiclos do
    collection do
      post :confirm
    end
  end
end
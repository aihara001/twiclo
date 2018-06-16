Rails.application.routes.draw do

  resources :twiclos do
    collection do
      post :confirm
    end
  end
end
Rails.application.routes.draw do

  get '/tops', to: 'tops#index'
  resources :twiclos do
    collection do
      post :confirm
    end
  end
end
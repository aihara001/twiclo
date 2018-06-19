Rails.application.routes.draw do
  root to: "tops#index"
  get '/tops', to: 'tops#index'
  resources :twiclos do
    collection do
      post :confirm
    end
  end
end
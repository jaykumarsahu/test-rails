Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :products, only: [:index]
      resources :sessions, only: [] do
        post :login, on: :collection
      end
      resources :registrations, only: [:create]
    end
  end

end

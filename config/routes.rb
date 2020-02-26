Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'pages#home'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bet_rooms, only: [:new, :create, :show, :index] do
    resources :events, only: [] do
      collection do
        get "/sport", to: "events#sport"
        post "/game", to: "events#game"
        post "/description", to: "events#description"
        post "/update", to: "events#update"
      end
    end
  end
end

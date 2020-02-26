Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'bet_rooms#index'
  # root :to => "bet_rooms#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bet_rooms, only: [:new, :create, :show, :index] do
    resources :events, only: [:index] do
      collection do
        get "/new_sport", to: "events#new_sport"
        post "/create_sport", to: "events#create_sport"

        # post "/update", to: "events#update"
      end
    end
  end
  resources :events, only: [] do
    member  do
      get "/edit_game", to: "events#edit_game"
      post "/update_game", to: "events#update_game"
      get "/edit_description", to: "events#edit_description"
      post "/update_description", to: "events#update_description"
    end
  end
  resources :events, only: [:show] do
    resources :bets, only: [:new, :create]
    # member do

    # end
  end
end

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: 'bet_rooms#index'
  get 'profile', to: 'pages#profile'
  patch 'profile_update', to: 'pages#update_amount_user'
  # root :to => "bet_rooms#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bet_rooms, only: [:new, :create, :show, :index, :edit, :update, :destroy] do
    resources :events, only: [:index] do
      collection do
        get "/new_sport", to: "events#new_sport"
        post "/create_sport", to: "events#create_sport"

        # post "/update", to: "events#update"
      end
    end
    get 'stat' , to: 'bet_rooms#stat'
  end

  resources :chatrooms, only: :show do
      resources :messages, only: :create
  end


  resources :events, only: [] do
    member  do
      get "/edit_league", to: "events#edit_league"
      post "/update_league", to: "events#update_league"
      get "/edit_game", to: "events#edit_game"
      post "/update_game", to: "events#update_game"
      get "/edit_description", to: "events#edit_description"
      post "/update_description", to: "events#update_description"
      post "/copy_to_stat", to: "events#copy_to_stat"
    end
  end

  resources :events, only: [:show] do
    member do
      patch "/close", to: "events#close"
      patch "/money_dispatch", to: "events#money-dispatch"
    end
    resources :bets, only: [:new, :create]

  end
end

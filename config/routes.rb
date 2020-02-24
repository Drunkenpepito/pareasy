Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :bet_rooms, only: [:index, :show] do
    resources :events, only: [:index, :show]  do
      resources :bets, only: [:index, :show]
    end
  end

  resources :bet_rooms, except: [:index, :show]
  resources :events, except: [:index, :show]
  resources :bets, except: [:index, :show]

end

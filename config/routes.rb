Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  namespace :users do
    resources :skills, only: [:index]
  end

  resources :users, only: [:show, :edit, :update] do
    resources :bookings, only: [:index, :show]
  end


  resources :skills do
    resources :bookings, only: [:new, :create, :edit, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

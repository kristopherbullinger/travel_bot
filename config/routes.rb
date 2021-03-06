Rails.application.routes.draw do
resources :users, only: [:index,:new, :create, :show]
resources :vacations, only: [:index, :new, :create, :show, :edit, :update, :destroy]
resources :sights, only: [:new, :create, :show, :edit, :update, :destroy]
resources :sessions, only: [:create, :destroy]
#
get '/sights', to: 'sights#index', as: "travel_inspiration"
get '/login', to: 'sessions#new', as: "login"
# post '/sessions', to: 'sessions#create', as: "sessions"
# delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

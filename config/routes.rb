Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  get '/signup', to: 'users#new'
  get '/homepage', to: 'welcome#homepage'
  resources :users, only: [:create]
  resources :sessions, only: [:new, :create]

  
end

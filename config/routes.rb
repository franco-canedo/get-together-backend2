Rails.application.routes.draw do
  resources :users
  resources :topics
  resources :meetups
  resources :comments

  post '/signup', to: 'users#create'


end

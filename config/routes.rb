Rails.application.routes.draw do
  resources :comments
  resources :topics
  resources :user_topics
  resources :user_meetups
  resources :meetups
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :users
  resources :topics
  resources :meetups
  resources :comments

  post '/signup', to: 'users#create'
  post '/users/login', to: 'users#login'
  post '/join', to: 'users#joinMeetup'


  delete '/usermeetup/delete', to: 'users#leaveMeetup'
  get '/loggedInUser', to: 'users#loggedInUser'

end

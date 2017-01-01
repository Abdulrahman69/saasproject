Rails.application.routes.draw do
 

  get 'bookings/new'

  get 'bookings/create'

  get 'bookings/index'

 # get 'review/index'
 # get 'review/create'
 # get 'review/new'
 resources :bikes  
 resources :reviews
 resources :bookings
 # get 'bikes/index'
 # get 'bikes/new'
  get 'bikes/book'
  post 'bookings/create'
 # get 'bikes/create'
   post  'reviews/create'

  devise_for :users
  root 'users#index'
resources :users 
 
 end

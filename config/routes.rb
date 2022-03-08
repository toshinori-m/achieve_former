Rails.application.routes.draw do
  root 'static_pages#home'
  get 'sessions/new'
  get  '/signup',     to: 'users#new'
  get  '/goal',       to: 'static_pages#goal'
  get  '/threemonths_goal',         to: 'static_pages#threemonths_goal'
  get  '/monthly_goal',             to: 'static_pages#monthly_goal'
  get  '/report',     to: 'static_pages#report'
  get  '/training_menu',            to: 'static_pages#training_menu'
  get  '/participating_room',       to: 'static_pages#participating_room'
  get  '/like',       to: 'static_pages#like'
  get  '/participationg_room_user', to: 'static_pages#participationg_room_user'
  get  '/message',    to: 'static_pages#message'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  resources :users
end
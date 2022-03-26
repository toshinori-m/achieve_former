Rails.application.routes.draw do
  root  'static_pages#home'
  get  '/training_menu',to: 'static_pages#training_menu'
  get   '/signup',      to: 'users#new'
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'
  resources :users
  resources :goal,    only: %i[edit update show]
end


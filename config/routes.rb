Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/goal'
  get 'static_pages/threemonths_goal'
  get 'static_pages/monthly_goal'
  get 'static_pages/report'
  get 'static_pages/training_menu'
  get 'static_pages/participating_room'
  get 'static_pages/like'
  get 'static_pages/participationg_room_user'
  get 'static_pages/message'
  root 'static_pages#home'
end

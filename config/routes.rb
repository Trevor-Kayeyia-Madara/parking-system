Rails.application.routes.draw do
  resources :attendees, only: [:new, :create]
  post 'attendees/check_in', to: 'attendees#check_in'
end

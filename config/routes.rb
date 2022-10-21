Rails.application.routes.draw do
  root 'home#homepage'
  get 'home/userdetails', to: 'home#userdetails', as: 'userdetails'
  post 'home/userdeta', to: 'home#upload', as: 'upload'
  post 'home/av/:av', to: 'home#avatar', as: 'home_av'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  post '/carasoueler:act', to: 'home#carasoueler', as: 'carasoueler'
  resources 'doctor', only: %i[index]
end

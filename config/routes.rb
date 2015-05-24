Rails.application.routes.draw do
  resources :sequences, only: [:new, :create]
  root "sequences#new"
end

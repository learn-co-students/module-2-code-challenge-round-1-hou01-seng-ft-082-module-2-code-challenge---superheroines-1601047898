Rails.application.routes.draw do
  # resources :powers, only: [:index]
  resources :powers, :heroines
  resources :heroine_powers
  # resources :heroines, only: [:index]  

  # if I had more time i would clean this up to
  # specific the routes needed based on the README
end

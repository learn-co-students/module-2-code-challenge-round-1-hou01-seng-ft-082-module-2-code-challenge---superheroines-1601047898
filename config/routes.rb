Rails.application.routes.draw do
  get 'heroinepowers/new'

  get 'heroinepowers/create'

  resources :powers
  resources :heroines 
  resources :heroinepowers 
end

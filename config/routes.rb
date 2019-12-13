Rails.application.routes.draw do
  resources :athlete_competitions
  resources :competitions
  resources :athletes
  root 'home#home'

  get 'aboutUs', to: 'home#aboutUs'
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
end

Rails.application.routes.draw do
  resources :competitions
  resources :athletes
  root 'home#home'

  get 'aboutUs', to: 'home#aboutUs'
  get 'athletes', to: 'home#athletes'
  get 'competitions', to: 'home#competitions'
  get 'contact', to:'home#contact'
  post 'request_contact', to: 'home#request_contact'
end

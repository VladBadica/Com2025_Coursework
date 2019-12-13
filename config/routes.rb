Rails.application.routes.draw do
  resources :competitions
  resources :athletes
  root 'home#home'
  get 'athletes', to: 'home#athletes'
  get 'contact', to:'home#contact'
  get 'aboutUs', to: 'home#aboutUs'
  post 'request_contact', to: 'home#request_contact'
end

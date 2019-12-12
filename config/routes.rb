Rails.application.routes.draw do
  root 'home#home'
  get 'athletes', to: 'home#athletes'
  get 'contact', to:'home#contact'
  post 'request_contact', to: 'home#request_contact'
end

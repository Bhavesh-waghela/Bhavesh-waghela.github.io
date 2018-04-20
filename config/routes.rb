Rails.application.routes.draw do
  root 'home#index'
  get 'home/about'
  get 'home/contact'
  post 'send_email', to: "home#send_email", as: :send_email
end

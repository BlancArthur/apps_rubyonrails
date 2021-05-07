Rails.application.routes.draw do
  resources :tableaus
  get 'pages/home'
  root 'pages#home'
  resources :oeuvres
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# Rails.application.routes.draw do
#   # Add this line
#   root to: 'pages#home'
  
#   # You can leave this one if you want
#   get 'pages/home'
  
#   # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
# end


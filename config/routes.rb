Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root "pages#home"
  get "up" => "rails/health#show", as: :rails_health_check
  get '/login', to: 'pages#login'
  get '/about', to: 'pages#about'
  get '/terms', to: 'pages#terms'
  get '/sign_up', to: 'registrations#new'
  post '/sign_up', to: 'registrations#create'
end

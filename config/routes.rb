Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  root "doctors#index"
  resources :doctors
   resources :users do
    resources :appointments, only: %i[index create new destroy]
   end
end

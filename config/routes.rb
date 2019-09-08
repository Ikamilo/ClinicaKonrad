Rails.application.routes.draw do
  resources :appointments
  resources :consulting_rooms
  resources :patients
  resources :medics
  root "appointments#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

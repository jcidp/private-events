Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  devise_scope :user do
    get "/users" => "users/registrations#show"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "events#index"

  resources :events

  post "/attendance", to: "attendance#create"
  delete "/attendance", to: "attendance#destroy"

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
end

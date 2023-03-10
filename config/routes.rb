Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "bienvenida", to: "home#index"
  get "articles/new", to: "articles#new"
  get "articles/:id", to: "articles#show"
  get "articles/:id/edit", to: "articles#edit"
  post "articles", to: "articles#create"
  patch "articles/:id", to: "articles#update", as: :article
  delete "articles/:id", to: "articles#destroy"
end

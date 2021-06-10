Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/products", to: "products#index"
  post "/products", to: "products#create"
  post "products/new", to: "products#new"

  root "products#index"
end

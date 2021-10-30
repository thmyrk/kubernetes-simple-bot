Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/", controller: "application", action: "index"
  post "/", controller: "application", action: "create"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/fruits" => "fruits#index"
  get "/fruits/:id" => "fruits#show"
  post "/fruits" => "fruits#create"
  patch "/fruits/:id" => "fruits#update"
  delete "/fruits/:id" => "fruits#destroy"
end

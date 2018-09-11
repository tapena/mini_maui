Rails.application.routes.draw do
  namespace :api do
    get "/kids" => 'kids#index'
    post "/kids" => 'kids#create'
    get "/kids/:id" => 'kids#show'
    patch "/kids/:id" => 'kids#update'
  end
end

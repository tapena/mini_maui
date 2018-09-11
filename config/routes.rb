Rails.application.routes.draw do
  namespace :api do
    get "/all_kids_url" => 'kids#all_kids_action'
  end
end

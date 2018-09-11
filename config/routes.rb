Rails.application.routes.draw do
  namespace :api do
    get "/all_kids_url" => 'kids#all_kids_action'
    get "/first_kid_url" => 'kids#first_kid_action'
    get "/second_kid_url" => 'kids#second_kid_action'
    get "/third_kid_url" => 'kids#third_kid_action'
  end
end

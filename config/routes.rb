Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'
  resources :recipes
  resources :users
  mount Knock::Engine => "/knock"
end

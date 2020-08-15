Rails.application.routes.draw do
  #login user
  root 'users#home'
  get '/' => 'users#home'
  get 'login' => 'users#login'
  delete 'login' => 'users#logout'
  post 'login' => 'users#check'
  #signup user
  get '/signup' => 'users#homeSignup'
  post 'signup' => 'users#signup'
  #crud books
  resources :books, only: [:index, :create, :show, :update, :destroy]
  delete 'books/' => 'books#destroyAllBook'


end


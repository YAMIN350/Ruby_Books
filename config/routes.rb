Rails.application.routes.draw do
  root 'users#home'
  get '/' => 'users#home'
  get 'login' => 'users#login'
  delete 'login' => 'users#logout'
  post 'login' => 'users#check'
  resources :books, only: [:index, :create, :show, :update, :destroy]
  delete 'books/' => 'books#destroyAllBook'


end


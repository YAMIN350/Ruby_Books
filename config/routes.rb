
Rails.application.routes.draw do
  root 'books#index'
  resources :books, only: [:index, :create, :show, :update, :destroy]
  delete 'books/' => 'books#destroyAllBook'
end


Rails.application.routes.draw do
  get 'books' => 'books#index'
  post 'books' => 'books#create'
  # puis plein de commentaires
end

# Rails.application.routes.draw do
#   resources :books, only: [:index, :destroy]
# end

Rails.application.routes.draw do
  resources :books, only: [:new, :create, :index, :destroy]
end

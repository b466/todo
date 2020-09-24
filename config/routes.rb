Rails.application.routes.draw do
  devise_for :users
  get 'lists/new'
  get 'lists/index'

  get 'lists/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root'top#index'

resources :list, only: %i(new create)
end

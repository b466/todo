Rails.application.routes.draw do
  get 'card/new'
  get 'card/index'
  get 'card/show'
  get 'card/edit'
devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root'top#index'

resources :list, only: %i(new create edit update destroy)do
resources :card, only: %i(new create)
end


end

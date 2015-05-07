Rails.application.routes.draw do

  resources :members

  get '/:locale' => 'members#index'

  root 'members#index'
end

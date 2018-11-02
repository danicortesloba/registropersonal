Rails.application.routes.draw do
  get 'contracts/create'
  resources :projects
  resources :people
  resources :contracts
  root to:'people#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

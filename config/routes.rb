Rails.application.routes.draw do

  resources :employees
  root 'employees#index'
  devise_for :users, path: "", path_names: { sign_in: 'signin', sign_out: 'signout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: '', sign_up: 'signup' }
end

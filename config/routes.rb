Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'loans/extends'
  root 'loans#index'
  resources :loans

end

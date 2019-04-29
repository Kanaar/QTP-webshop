Rails.application.routes.draw do
  get 'company/create'
  get 'company/read'
  get 'company/update'
  get 'company/destroy'
  devise_for :customers
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  resources :categories
  root "dashboard#index"

  mount_devise_token_auth_for 'User', at: '/v1/auth', controllers: {
    sessions: 'api/v1/auth/sessions'
  }
end

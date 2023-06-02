Rails.application.routes.draw do
  devise_for :users
  resources :categories
  root "dashboard#index"

  mount_devise_token_auth_for 'User', at: '/v1/auth',  as: :auth_v1, controllers: {
    sessions: 'api/v1/auth/sessions'
  }

  namespace :api do
    namespace :v1 do
      resources :categories
    end
  end
end

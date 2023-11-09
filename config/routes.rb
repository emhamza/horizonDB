Rails.application.routes.draw do

  
  resources :service_types
  resources :commissioneds
  mount Rswag::Ui::Engine => '/api-docs'
  mount Rswag::Api::Engine => '/api-docs'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  #routes for commissioneds
  namespace :api do
    namespace :v1 do
      resources :commissioneds, only: [:index, :show, :create, :destroy]
    end
  end

  namespace :api do
    namespace :v1 do
      resources :service_types, only: [:index, :show, :create, :destroy]
    end
  end

  #routes for time services
  namespace :api do
    namespace :v1 do
      resources :monthly_services, only: [:index, :show, :create, :destroy]
      resources :biannual_services, only: [:index, :show, :create, :destroy]
      resources :yearly_services, only: [:index, :show, :create, :destroy]
      resources :quarterly_services, only: [:index, :show, :create, :destroy]
    end
  end

  # end point to get user's reservations
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show ]do
        resources :reservations, only: [:index]
      end
    end
  end
end

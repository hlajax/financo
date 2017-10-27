Rails.application.routes.draw do
  namespace :backoffice do
    get 'reports/index'
  end

  namespace :backoffice do
    get 'transactions/index'
  end

  namespace :backoffice do
    get 'schedules/index'
  end

  get 'backoffice', to: 'backoffice/dashboard#index'
  get 'backoffice/settings', to: 'backoffice/settings#index'

  namespace :backoffice do
    namespace :settings do
      resources :expense_categories, except: [:show, :destroy]
      resources :income_categories, except: [:show, :destroy]
      resources :currencies, except: [:show, :destroy]
      resources :accounts, except: [:show, :destroy]
      resources :payees, except: [:show, :destroy]
    end
    get 'settings/index'
    get 'dashboard/index'
  end

  namespace :site do
    get 'home/index'
  end

  devise_for :admins
  devise_for :users

  # root 'site/home#index'
  root 'backoffice/dashboard#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

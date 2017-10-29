Rails.application.routes.draw do

  get 'backoffice', to: 'backoffice/dashboard#index'
  get 'backoffice/settings', to: 'backoffice/settings#index'

  namespace :backoffice do
    get 'dashboard/index'
    resources :accounts, except: [:destroy]
    resources :transactions, except: [:show, :destroy]
    resources :transfer_transactions
    resources :expense_transactions
    resources :income_transactions
    resources :schedules, except: [:show, :destroy]
    get 'reports/index'
    get 'settings/index'
    namespace :settings do
      resources :expense_categories, except: [:show, :destroy]
      resources :income_categories, except: [:show, :destroy]
      resources :currencies, except: [:show, :destroy]
      resources :accounts, except: [:show, :destroy]
      resources :payees, except: [:show, :destroy]
    end
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

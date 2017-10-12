Rails.application.routes.draw do
  get 'backoffice', to: 'backoffice/dashboard#index'
  get 'backoffice/settings', to: 'backoffice/settings#index'

  namespace :backoffice do
    namespace :settings do
      resources :expense_categories, except: [:show, :destroy]
      resources :income_categories, except: [:show, :destroy]
    end
    get 'settings/index'
    get 'dashboard/index'
  end

  namespace :site do
    get 'home/index'
  end

  devise_for :admins
  devise_for :users

  root 'site/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

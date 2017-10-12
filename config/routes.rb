Rails.application.routes.draw do
  namespace :backoffice do
    get 'settings/index'
  end

  namespace :site do
    get 'home/index'
  end

  get 'dashboard', to: 'backoffice/dashboard#index'
  get 'dashboard/settings', to: 'backoffice/settings#index'

  namespace :backoffice do
    get 'dashboard/index'
  end

  devise_for :admins
  devise_for :users

  root 'site/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root 'mainpages#index'

  devise_for :users

  scope module: 'sailer' do
    resources :profiles, except: [:destroy]
    resources :stores
  end
end

Rails.application.routes.draw do
  root 'mainpages#index'

  devise_for :users
end

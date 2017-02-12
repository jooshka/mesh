Rails.application.routes.draw do

  devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  namespace :api , defaults: { format: :json } do
    scope module: :v1 do
      resources :users, :only => [:show]
    end
  end

  root to: "application#index"
  get '*path', to: 'application#index'

end

Rails.application.routes.draw do
  get 'articles/national_household_survey'
  get 'articles/census_bc'
  get 'articles/foreign_involvement'
  get 'articles/municipal'
  get 'articles/development_region'
  get 'articles/provincial'
  get 'articles/index'

  get 'create/index'
  get 'admin/index'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'home/index'
  
  root 'articles#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

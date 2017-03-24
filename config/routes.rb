Rails.application.routes.draw do

  get 'articles/interesting_insights'
  get 'articles/national_household_survey'
  get 'articles/census_bc'
  get 'articles/municipal'
  get 'articles/development_region'
  get 'articles/provincial'  
  get 'articles/index'
  
  root 'articles#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

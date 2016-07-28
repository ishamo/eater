Rails.application.routes.draw do
  get 'welcome/about'

  get 'welcome/index'

  resources :people
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root "people#index"
end

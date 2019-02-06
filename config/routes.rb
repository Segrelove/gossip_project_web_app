Rails.application.routes.draw do
  root 'gossips#index'

  get 'user/display/:id', to: 'user#display'

  get '/welcome/:id', to: 'welcome#first_name'

  get '/team', to: 'static#team'
  
  get '/contact', to: 'static#contact'

  resources :gossips
end

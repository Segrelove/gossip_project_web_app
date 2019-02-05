Rails.application.routes.draw do
  root 'home_page#index'

  get 'user/display/:id', to: 'user#display'

  get 'potin/:id', to: 'potin#content'

  get '/welcome/:id', to: 'welcome#first_name'

  get '/team', to: 'static#team'
  
  get '/contact', to: 'static#contact'

  resources :gossips, only: [:new, :create]
end

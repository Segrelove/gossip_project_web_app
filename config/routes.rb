Rails.application.routes.draw do
  root 'gossips#index'

  get '/welcome/:id', to: 'welcome#first_name'

  get '/team', to: 'static#team'
  
  get '/contact', to: 'static#contact'

  resources :user, only: [:index, :show]

  resources :cities, only: [:index, :show]

  resources :gossips do
    resources :comments
  end
end

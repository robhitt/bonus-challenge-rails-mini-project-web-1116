Rails.application.routes.draw do
  root to: 'application#index'
  get 'offices/employees', to: 'offices#employees', as: 'office_employees'

  get '/signin', to: 'sessions#new'
  post '/signin', to: 'sessions#create'

  delete '/signout', to: 'sessions#destroy'

  resources :managers, :offices, :bands, :band_members

end

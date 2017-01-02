Rails.application.routes.draw do
  get 'offices/employees', to: 'offices#employees', as: 'office_employees'
  resources :managers, :offices, :bands, :band_members
  root 'index#index'
end

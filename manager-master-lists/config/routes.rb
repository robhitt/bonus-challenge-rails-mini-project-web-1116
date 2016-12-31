Rails.application.routes.draw do
  root 'index#index'


  get 'offices/employees', to: 'offices#employees', as: 'office_employees'
  resources :managers, :offices, :bands

end

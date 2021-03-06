Rails.application.routes.draw do
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  devise_for :funcionarios, controllers: {registrations: 'funcionario/registrations', sessions: 'funcionario/sessions'}
  resources :funcionarios
 
  devise_for :cuidadors, controllers: {registrations: 'cuidador/registrations', sessions: 'cuidador/sessions'}
  resources :cuidadors do
    resources :animals
  end
end
Rails.application.routes.draw do
  match 'sessions/new' => 'rails_env_admin/sessions#new', via: :get
  match 'sessions/create' => 'rails_env_admin/sessions#create', via: :post
  match 'sessions/destroy' => 'rails_env_admin/sessions#destroy', via: :delete


  # get :sign_in, to: 'session#new'
  # post :sign_in, to: 'session#create'
  # get :sign_out, to:'session#destroy'
end
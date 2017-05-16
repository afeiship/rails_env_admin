Rails.application.routes.draw do
  # get 'login' => 'rails_env_admin/sessions#new'
  match 'sessions/new' => 'rails_env_admin/sessions#new', via: :get
  match 'sessions/create' => 'rails_env_admin/sessions#create', via: :post
  match 'sessions/destroy' => 'rails_env_admin/sessions#destroy', via: :delete
end
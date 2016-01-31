Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#welcome'
  devise_for :users,
  			 :path => '',
  			 :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile', :sign_up => 'register'},
  			 :controllers => {:omniauth_callbacks => 'omniauth_callbacks',
  			 registrations: 'registrations'
  			 				 }

  			 resources :users, only: [:show]
end

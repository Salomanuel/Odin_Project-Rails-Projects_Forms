Rails.application.routes.draw do
	resources :users, :only => [:new,:create]
	# get '/users', to: 'users#index'
end

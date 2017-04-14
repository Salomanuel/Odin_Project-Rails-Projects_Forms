Rails.application.routes.draw do
	resources :users #, :only => [:new,:create,:edit]
	# get '/users', to: 'users#index'
end

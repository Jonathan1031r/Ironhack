Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	get '/', to: 'site#home'

	get '/contact', to: 'site#contact'

	get '/projects/new', to: 'projects#new'

	get '/projects', to: 'projects#index'

	get '/projects/:id', to: 'projects#show'

	get '/projects/:project_id/time_entries', to: 'time_entries#index'
end


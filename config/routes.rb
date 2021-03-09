Rails.application.routes.draw do
  root 'dashboard#index'

  resources :announcements, only: [:index, :show]
  resources :topics, only: [:create, :show, :destroy] do
    post :add_reply
  end

  get '/management' => 'management#index', as: :management
  put '/management/authorize_user' => 'management#authorize_user', as: :authorize_user
  post '/management/send_announcement' => 'management#send_announcement', as: :send_announcement
  post '/management/reply_service_topic' => 'management#reply_service_topic', as: :reply_service_topic

  # sign up page with form:
	get 'users/new' => 'users#new', as: :new_user

	# create (post) action for when sign up form is submitted:
	post 'users' => 'users#create'


	# log in page with form:
	get '/login'     => 'sessions#new'

	# create (post) action for when log in form is submitted:
	post '/login'    => 'sessions#create'

	# delete action to log out:
	delete '/logout' => 'sessions#destroy'
end

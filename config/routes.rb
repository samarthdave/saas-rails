Rails.application.routes.draw do
  resources :comments
  resources :people
	devise_for :users
	resources :contacts
	get '/about' => 'pages#about'
	root 'pages#home'
	devise_scope :user do
		get 'users/sign_out' => "devise/sessions#destroy"
	end
end

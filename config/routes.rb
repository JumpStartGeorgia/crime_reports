BootstrapStarter::Application.routes.draw do

	#--------------------------------
	# all resources should be within the scope block below
	#--------------------------------
	scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do

		match '/admin', :to => 'admin#index', :as => :admin, :via => :get
		devise_for :users, :path_names => {:sign_in => 'login', :sign_out => 'logout'},
											 :controllers => {:omniauth_callbacks => "omniauth_callbacks"}



		namespace :admin do
			resources :genders
      resources :gun_perms
      resources :crim_bgs
      resources :under_influences
      resources :districts
      resources :location_categories
      resources :police_arrival_times
      resources :emergency_arrival_times
      resources :employment_statuses
      resources :education_statuses
      resources :social_statuses
      resources :family_statuses
      resources :actor_types
      resources :substances
      resources :reports
      resources :relationships
      resources :statuses
      resources :motives
      resources :weapons
      resources :pages
			resources :users
		end

		get 'about', to: 'root#about'

    resources :reports, only: [:index, :show]

		# all routes before this!!!

		root :to => 'root#index'
	  match "*path", :to => redirect("/#{I18n.default_locale}") # handles /en/fake/path/whatever

	end

	match '', :to => redirect("/#{I18n.default_locale}") # handles /
	match '*path', :to => redirect("/#{I18n.default_locale}/%{path}") # handles /not-a-locale/anything

end

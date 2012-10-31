Cribs::Application.routes.draw do

  devise_for :users, :controllers => { 
    :omniauth_callbacks => "users/omniauth_callbacks" 
  }

  resources :welcome

  resources :photos, :only => [:create]

  resources :listings do
    collection do
      post 'search'
    end
  end

  root :to => "welcome#index"

end

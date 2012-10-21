Cribs::Application.routes.draw do

  devise_for :users, :controllers => { 
    :omniauth_callbacks => "users/omniauth_callbacks" 
  }

  resources :welcome

  resources :listings do
    collection do
      get 'search'
    end
  end

  root :to => "welcome#index"

end

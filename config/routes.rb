Cribs::Application.routes.draw do

  resources :welcome

  resources :listings do
    collection do
      get 'search'
    end
  end

  root :to => "welcome#index"

end

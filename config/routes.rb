Cribs::Application.routes.draw do

  resources :welcome

  resources :listings

  root :to => "welcome#index"

end

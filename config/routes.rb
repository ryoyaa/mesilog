Rails.application.routes.draw do
  get 'menu/new'

  get 'shops/new'

  get 'shop_user_sessions/new'

  get 'sessions/new'

  root 'pages#index'

  get 'review/new'



  get    '/login', to: 'sessions#new', :as => :login
  post   '/login' , to: 'sessions#create'
  delete  '/logout', to: 'sessions#destroy', :as => :logout



 resources 'users', 'shop_users','shop_user_sessions','shops', 'menus', 'reviews'







  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'products/index'

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  devise_for :users
  
  get '/about' => 'site#about'
  get '/homepage' => 'site#homepage'
  get '/him' => 'site#him'
  get '/her' => 'site#her'
  get '/contact' => 'site#contact'
  get '/admin' => 'user#admin_login'
  get '/logout' => 'user#logout'
  get '/cart' => 'cart#index' 
  get '/cart/:id' => 'cart#add'
  get '/cart/clear' => 'cart#clearCart' 
  get '/signedinuserprofile' => 'profiles#signedinuserprofile'
  get '/signin' => 'profiles#signin'
  
  
  resources :items
  resources :profiles
  resources :products, only: [:index]
  resources :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]
  
  
  
  
  
  #root 'items#index'
  root 'site#homepage'
  
  
  
  #devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
#prof
  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end

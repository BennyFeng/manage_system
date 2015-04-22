Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  root 'logins#login'
  post '/', to: 'logins#login'
  get '/users', to: 'users#index'
  #post '/managements', to: 'managements#index'
  get '/managements/adddoc', to: 'managements#adddoc'
  post '/managements/createdoc', to: 'managements#createdoc'
  get '/managements/showdoc', to: 'managements#showdoc'
  get '/managements/editdoc', to: 'managements#editdoc'
  get '/managements/deletedoc', to: 'managements#deletedoc'
  post '/managements/updatedoc', to: 'managements#updatedoc'
  get '/managements/addlag', to: 'managements#addlag'
  post '/managements/createlag', to: 'managements#createlag'
  get '/managements/showlag', to: 'managements#showlag'
  get '/managements/editlag', to: 'managements#editlag'
  get '/managements/deletelag', to: 'managements#deletelag'
  post '/managements/updatelag', to: 'managements#updatelag'
  get '/managements/addance', to: 'managements#addance'
  post '/managements/createance', to: 'managements#createance'
  get '/managements/showance', to: 'managements#showance'
  get '/managements/editance', to: 'managements#editance'
  get '/managements/deleteance', to: 'managements#deleteance'
  post '/managements/updateance', to: 'managements#updateance'
  resources :managements
  get '/managements?page=1', to: 'managements#index'
  get '/managements?page=2', to: 'managements#index'
  get '/managements?page=3', to: 'managements#index'
  # You can have the root of your site routed with "root"
  #root 'login#login'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

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

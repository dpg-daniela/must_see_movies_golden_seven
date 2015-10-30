Rails.application.routes.draw do

  get("/", { :controller => "movies", :action => "index" })
  get("/movies/new_form", { :controller => "movies", :action => "new_form" })
  get("/movies/create_movie", { :controller => "movies", :action => "create_row" })
  get("/movies", { :controller => "movies", :action => "index" })
  get("/movies/:id",       { :controller => "movies", :action => "show" })
  get("/movies/:id/edit", { :controller => "movies", :action => "edit_form" })
  get("/movies/:id/edit_movie", { :controller => "movies", :action => "edit_movie" })
  get("/movies/delete_movie/:id", { :controller => "movies", :action => "delete_row" })

  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/new_form", { :controller => "directors", :action => "new_form" })
  get("/create_director", { :controller => "directors", :action => "create_row" })
  get("/directors/:id",       { :controller => "directors", :action => "show_details" })
  get("/directors/:id/edit", { :controller => "directors", :action => "edit_form" })
  get("/update_director/:id", { :controller => "directors", :action => "update_row" })
  get("delete_directors/:id", { :controller => "directors", :action => "destroy" })


  get("/roles", { :controller => "roles", :action => "index" })
  get('/roles/new_form', { :controller => 'roles', :action => 'new_form' })
  get('/create_role', { :controller => 'roles', :action => 'create_row' })
  get('/roles/:id', { :controller => 'roles', :action => 'show' })
  get('/roles/:id/edit_form', { :controller => 'roles', :action => 'edit_form' })
  get('/update_role/:id', { :controller => 'roles', :action => 'update_row' })
  get('/delete_role/:id', { :controller => 'roles', :action => 'destroy' })
  


  get("/actors", { :controller => "actors", :action => "index" })
  get('/actors/new_form', { :controller => 'actors', :action => 'new_form' })
  get('/create_actor', { :controller => 'actors', :action => 'create_row' })
  get('/actors/:id', { :controller => 'actors', :action => 'show' })
  get('/actors/:id/edit_form', { :controller => 'actors', :action => 'edit_form' })
  get('/update_actor/:id', { :controller => 'actors', :action => 'update_row' })
  get('/delete_actor/:id', { :controller => 'actors', :action => 'destroy' })

end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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


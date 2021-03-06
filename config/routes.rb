AKonRails::Application.routes.draw do
  root "static_pages#index"  
  
  get "index", to: "static_pages#index", as: "index"
  
  get "about/me", to: "static_pages#about/me", as: "aboutme"
  get "about/resume", to: "static_pages#about/resume", as: "resume"
  get "about/awards", to: "static_pages#about/awards", as: "awards"
  
  get "portfolio/sound", to: "static_pages#portfolio/sound", as: "sound"
  get "portfolio/design", to: "static_pages#portfolio/design", as: "design"
  get "portfolio/software", to: "static_pages#portfolio/software", as: "software"
  
  scope "/portfolio" do
    resources :works
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
end

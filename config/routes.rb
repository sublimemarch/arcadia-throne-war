Rails.application.routes.draw do
  namespace :auction do
    # Root
    root 'application#index'

    # Root via URL
    get '/index', to: 'application#index'

    # User actions
    get '/users/forgot', to: 'users#forgot'
    post '/users/forgot', to: 'application#index'
    get '/login' => 'auth#new'
    post '/login' => 'auth#login'
    get '/logout' => 'auth#logout'

    # To auction rules
    get '/rules', to: 'application#rules'

    # Automatic routes
    resources :users, only: [:create, :new]

    resources :games, only: [:show, :index] do
      resources :pledges, only: [:create]
      resources :characters, only: [:create, :new]
    end

    namespace :admin do
      # GM routes
      get 'pledgeplan', to: 'pledgeplan#index'

      resources :games, only: [:show, :index, :create] do
        resources :characters, only: [:destroy]
        resources :pledges, only: [:destroy]
      end

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

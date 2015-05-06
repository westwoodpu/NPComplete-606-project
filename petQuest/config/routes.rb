Rails.application.routes.draw do

  resources :posts
  resources :posts
  resources :posts
  resources :foods do
    collection {post :import }
  end

  resources :nutritions do
    collection {post :import }
  end

     resources :idealdogweights do
    collection {post :import }
  end
  resources :idealcatweights do
    collection {post :import }
  end


  resources :recipes, except: :add
   

  get 'recipes/:id/add(.:format)' => 'foods#add', :as => :add


  get 'recipes/:id/add_weight(.:format)' => 'recipes#add_weight', :as => :add_weight

  get 'welcome/index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/faqs'
  get 'welcome/pricing'
  get 'welcome/features'
  get 'welcome/login'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'getdata' => 'pets#getdata'
  get 'search(.:format)' => 'foods#search', :as => :search
  post 'search(.:format)' => 'foods#search', :as => :searchmore
   resources :pets
   #get 'pets/:id/me(.:format)' => 'pets#me'  # to calculate the ME for pet(:id)
   get 'calculate' => 'foods#calculate', :as => :calculate# to calculate the ME for pet(:id)
   post 'calculate' => 'foods#calculate', :as => :calculatemore# to calculate the ME for pet(:id)
  # You can have the root of your site routed with "root"
    get 'create_multiple' => 'recipes#create_multiple', :as => :createmultiple#
    post 'create_multiple' => 'recipes#create_multiple', :as => :createmultiplemore#
    get 'food/admin' =>'foods#upload'

   root 'welcome#index'

   get 'getfooddata' => 'foods#getfooddata'


  # Example of regular route:
    

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

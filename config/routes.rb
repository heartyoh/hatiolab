Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root to: 'site#main'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  get 'site_main' => 'site#main'
  get 'site_industries' => 'site#industries'
  get 'site_indu_automotive' => 'site#indu_automotive'
  get 'site_indu_electronics' => 'site#indu_electronics'
  get 'site_indu_mechanics' => 'site#indu_mechanics'
  get 'site_indu_metalforming' => 'site#indu_metalforming'
  get 'site_indu_logistics' => 'site#indu_logistics'
  get 'site_products' => 'site#products'
  get 'site_prod_mes' => 'site#prod_mes'
  get 'site_prod_qms' => 'site#prod_qms'
  get 'site_prod_scm' => 'site#prod_scm'
  get 'site_prod_crm' => 'site#prod_crm'
  get 'site_prod_edm' => 'site#prod_edm'
  get 'site_prod_wms' => 'site#prod_wms'
  get 'site_company' => 'site#company'
  get 'site_support' => 'site#support'

  post 'site_contact' => 'site#contact'

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

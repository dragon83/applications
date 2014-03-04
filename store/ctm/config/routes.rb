Myapp::Application.routes.draw do
  get "approval_admin/approve/:id" , to: 'approval_admin#approve'   , as: 'admin_approve_change'
  get "approval_admin/reject/:id"  , to: 'approval_admin#reject'    , as: 'admin_reject_change'
  get "approval_admin/dashboard"
  get "approval_admin/reviews"


  resources :marital_statuses


  resources :special_statuses


  resources :educations


  resources :professions


  resources :roles


  devise_for :users

  resources :friendships
  get "propose"  , to: 'friendships#new_friend_request' ,:as =>'propose'
  get "new_cancel" , to: 'friendships#new_decline_friends_request' ,:as =>'new_cancel'
  post  "cancel" , to:'friendships#decline_friends_request' ,:as =>'cancel'

  post "express_interest"  , to: 'friendships#create_friend_request' ,:as =>'create_friend_request'

  resources :sub_castes


  resources :castes


  resources :religions


  resources :cities


  resources :states


  resources :countries


  resources :user_filter_attribute_values


  resources :hobbies


  resources :user_filter_attributes


  resources :user_filters


  resources :degrees


  resources :user_profiles


  resources :users

  root :to => 'users#index'
  match 'religion/:id/get_castes' => 'religions#get_castes'
  match 'caste/:id/get_sub_castes' => 'castes#get_sub_castes'

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end

Rails.application.routes.draw do
root to: 'static#index'
  resources :archiwums
  resources :pacjents
  resources :wizyta
  resources :terminarzs
  resources :prac2specjalizacjas
  resources :specjalizacjas
  resources :prac2oddzials
  resources :pracowniks
  resources :oddzialies
  resources :rodzaj_pracownikas
  resources :archiwums
  resources :pacjents
  resources :wizyta
  resources :terminarzs
  resources :prac2specjalizacjas
  resources :specjalizacjas
  resources :prac2oddzials
  resources :oddzialies
  resources :rodzaj_pracownikas
  resources :pracowniks
  resources :oddzialies
  resources :pracowniks
  resources :oddzialies
  resources :pracowniks
  resources :oddzials
  resources :pracowniks
  resources :hehies
  resources :hehs
  resources :hehehs
  resources :hehs
  resources :hehehs
  resources :hehehs
  resources :hehes
  resources :specjalizacjas
  resources :prac2specjalizacjas
  resources :oddzialies
  resources :prac2oddzials
  resources :pracowniks
  resources :rodzaj_pracownikas
  resources :wozyta
  resources :archiwums
  resources :pacjents
  resources :terminarzs
  resources :students
  resources :pracowniks
  resources :pracownikis
  resources :pracowniks
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

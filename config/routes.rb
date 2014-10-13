VinEmber::Application.routes.draw do

	root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :products
      resources :companies
      resources :productentries
      resources :productprices
    end
  end

  get '*path', to: 'home#index' #rails route to handle whatever arbitrary routes are created via Ember
end

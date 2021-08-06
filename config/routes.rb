Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :wishlists do
        resources :items
      end     
    end
  end
end

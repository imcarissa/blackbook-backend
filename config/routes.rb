Rails.application.routes.draw do

    resources :groups do
    resources :contacts
  end
end

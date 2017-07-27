Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :links, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :links, only: [:create, :index]
    end

  end
end

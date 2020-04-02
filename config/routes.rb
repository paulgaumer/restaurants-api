Rails.application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :podcasts
      get 'dashboard', to: 'podcasts#show'
      patch 'dashboard/edit', to: 'podcasts#update'
      get "landing/:name", to: "podcasts#landing_page"
    end
  end
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :user_projects
  namespace :api do
    namespace :v1 do
      resources :boards
      resources :cards
      resources :users
      resources :icons
      resources :projects
      resources :user_projects
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      # get '/:username', to: 'users#findUsername'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

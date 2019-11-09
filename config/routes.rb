Rails.application.routes.draw do
  # versionando api
  namespace :api do
    namespace :v1 do
      resources :songs
      resources :albums
      resources :artists
    end
  end

  post 'authenticate', to: 'authentication#authenticate'

end

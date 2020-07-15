Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :geo_data
      delete '/geo_data/delete_all', to: 'geo_data#delete_all'
    end
  end
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :covid_stats
    end
  end
end

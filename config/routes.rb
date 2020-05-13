Rails.application.routes.draw do
  # /parties/:id
  resources :parties do
    member do
      # /parties/:id/ping
      post "ping"
    end
  end
end

Rails.application.routes.draw do
  resources :steps, only: %i(index show)
end

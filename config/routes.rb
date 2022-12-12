Rails.application.routes.draw do
  resources :cocktails, only: %i[index show new create destroy] do
    resources :doses, only: %i[show new create]
  end
  resources :doses, only: %i[destroy]
end

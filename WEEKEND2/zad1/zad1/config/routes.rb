Rails.application.routes.draw do
  resources :patients, only: [:show, :new, :create]
end

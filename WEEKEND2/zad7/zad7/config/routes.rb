Rails.application.routes.draw do
  resources :users do
    collection do
      get 'active'
      get 'inactive'
    end
  end
end

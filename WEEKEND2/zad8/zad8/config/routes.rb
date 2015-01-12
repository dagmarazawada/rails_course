Rails.application.routes.draw do
  resources :mems do
    member do
        get 'medium'
    end
  end
end

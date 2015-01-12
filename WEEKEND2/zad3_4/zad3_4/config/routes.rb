Rails.application.routes.draw do
  resources :employees do
    collection do
      get 'highest_salary'
      get 'the_richest'
    end

    member do
      get 'full_salary'
    end

  end

end

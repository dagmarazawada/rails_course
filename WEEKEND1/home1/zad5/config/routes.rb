Rails.application.routes.draw do
  get 'welcome/form'
  post 'welcome/form'

  post 'welcome/show' => 'welcome#show' 
end

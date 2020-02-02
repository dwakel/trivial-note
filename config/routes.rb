Rails.application.routes.draw do
  get 'dashboard/index'
  
  resources :notes do
    resources :items
  end

  root 'dashboard#index'
end

Rails.application.routes.draw do
  root 'websites#new'

  resources :websites do 
    resources :links, shallow: true
  end
  
end 

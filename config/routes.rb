Rails.application.routes.draw do
  devise_for :users
  root 'albums#index'
  resources:homes
  resources:albums do
  resources:comments
  end

  resources:images
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

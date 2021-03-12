Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources:home
  resources:album do
  resources:comment
  end

  resources:image
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

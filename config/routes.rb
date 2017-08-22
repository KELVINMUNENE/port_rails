Rails.application.routes.draw do
 
  resources :abouts
  resources :posts do
  	 resources :comments
  end
  devise_for :users
  resources :projects
  resources :skills
  resources :recommendations
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'home#index'

end



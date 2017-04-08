 Rails.application.routes.draw do
  resources :topics do
   resources :posts, except: [:index]
  end
  resources :users, only: [:new, :create]
  resources :questions
  resources :sessions, only: [:new, :create, :destroy]
  

  get 'about' => 'welcome#about'
  
  post 'users/confirmation' => 'users#confirmation' 
  
  root 'welcome#index'

end

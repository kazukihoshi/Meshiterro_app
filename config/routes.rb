Rails.application.routes.draw do
 
  
  root "homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'homes/about' => 'homes#about' ,as: 'about'
  resources :post_images, only:[:new,:index,:show,:create,:destroy] do
    resources :post_comments, only:[:create]
  end
  
  resources :users, only:[:show,:edit, :update]
end
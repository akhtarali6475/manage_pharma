Rails.application.routes.draw do
  resources :products
  devise_for :admin_users
  resources :users
  root to: 'home#index'

  get '/about' => 'home#about', as: 'about'
  get '/contact' => 'home#contact', as: 'contact'

end

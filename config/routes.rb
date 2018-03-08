Rails.application.routes.draw do
  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

  resources :job_applications
  resources :job_application_forms
  resources :galleries
  resources :schemes
  resources :products
  devise_for :admin_users
  resources :users
  root to: 'home#index'

  get '/about' => 'home#about', as: 'about'
  get '/contact' => 'home#contact', as: 'contact'

  resources :job_application_forms, path: 'jobs' do
    resources :job_applications, path: 'job-applications' do
    end
  end
end

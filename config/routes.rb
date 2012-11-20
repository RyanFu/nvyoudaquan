Nvyoudaquan::Application.routes.draw do
  root :to => 'application#homepage'
  match 'login' => 'users#login'
  get 'logout' => 'users#destroy'
  get 'signup' => 'users#new'
  resources :girls
  resources :users
  get 'admin' => 'application#admin'
  namespace :admin do |admin|
    resources :girls
    resources :works
    resources :users
  end
end

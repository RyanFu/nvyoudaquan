Nvyoudaquan::Application.routes.draw do
  root :to => 'application#homepage'
  namespace :admin do |admin|
    resources :girls
    resources :works
    resources :users
  end
end

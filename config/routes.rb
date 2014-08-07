Rails.application.routes.draw do
  resources :blurbs, only: [:edit, :update]
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'static_pages#home'

  match '/locations', to: 'static_pages#locations',         via: 'get'
  match '/services',  to: 'static_pages#services',          via: 'get'
  match '/contact',   to: 'static_pages#contact',           via: 'get'
  match '/about',     to: 'static_pages#about',             via: 'get'
  match '/signin',    to: 'sessions#new',                   via: 'get'
  match '/signout',   to: 'sessions#destroy',               via: 'delete'
  match '/113444332222234558687050494', to: 'blurbs#index', via: 'get'
  post 'send' =>          'static_pages#sendit'
end

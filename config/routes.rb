Rails.application.routes.draw do
  root 'static_pages#home'

  match '/locations', to: 'static_pages#locations', via: 'get'
  match '/services',  to: 'static_pages#services',  via: 'get'
  match '/contact',   to: 'static_pages#contact',   via: 'get'
  match '/about',     to: 'static_pages#about',     via: 'get'
  post 'send' =>          'static_pages#sendit'
end

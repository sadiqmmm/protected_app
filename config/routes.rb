ProtectedApp::Application.routes.draw do
  resources :items


  resources :folders


  get "static_pages/home"

  devise_for :users

  root :to => "static_pages#home"
end

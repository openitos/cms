Cms::Application.routes.draw do
  
  resources :articles

  resources :roles

  devise_for :users
  match "home", to: "pages#home"
  match "about", to: "pages#about"

  root :to => 'pages#home'
  ActionDispatch::Routing::Translator.translate_from_file('config/locales/routes.yml')
  
  mount Ckeditor::Engine => '/ckeditor'
end

Cms::Application.routes.draw do

  resources :news

  mount Ckeditor::Engine => '/ckeditor'
  resources :articles

  resources :roles

  devise_for :users
  match "home", to: "pages#home"
  match "about", to: "pages#about", as: :about
  match "services", to: "pages#services", as: :services
  match "publications", to: "pages#publications", as: :publications

  root :to => 'pages#home'
  ActionDispatch::Routing::Translator.translate_from_file('config/locales/routes.yml')
end

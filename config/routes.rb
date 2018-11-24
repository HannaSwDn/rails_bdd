Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/about'
  get 'articles', to: 'articles#index'
  get 'articles', to: 'articles#comment'
  
  root controller: :welcome, action: :index
  root 'welcome#index'
  resources :articles
end


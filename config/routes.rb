Rails.application.routes.draw do
  namespace :site do
    get 'welcome/index'
  end
  
  get 'inicio', to: 'site/welcome#index'
  
  root to: 'site/welcome#index'
end

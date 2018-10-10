Rails.application.routes.draw do
  get 'projects' => 'gallary#all', as: :gallary_all
  get 'projects/app/:item' => 'gallary#app', as: :gallary_item
  get 'apps' => 'apps#all', as: :apps_all
  get 'home/index', as: :home

  match 'admin' => 'admin#db_manager', as: :db_mgr, via: [:post, :get]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

end

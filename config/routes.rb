Rails.application.routes.draw do
  get 'projects' => 'gallary#all', as: :gallary_all
  get 'projects/app/:item' => 'gallary#app', as: :gallary_item

  get 'home/index', as: :home

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end

Rails.application.routes.draw do
  get 'gallary' => 'gallary#all'
  get 'gallary/app/:item' => 'gallary#app'

  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end

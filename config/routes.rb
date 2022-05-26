Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
  get 'fileserve', to: 'welcome#fileserve'
  scope 'variables' do
    post 'update_vars', to: 'welcome#update_vars'
  end
  resource :just_file, only: [:show, :update]
end

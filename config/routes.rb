Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'welcome#index'
  get 'fileserve', to: 'welcome#fileserve'
  scope 'variables' do
    post 'a_number', to: 'welcome#update_number'
  end
  resource :just_file, only: [:show, :update]
end

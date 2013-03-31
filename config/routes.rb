Biographer::Application.routes.draw do
  root to: 'pages#index'
  get 'pages/index'


  namespace :bio do
    root to: 'bio#view'
    get 'view' => 'bio#view'
    get 'new' => 'bio#new'
    get 'edit' => 'bio#edit'
    post 'create' => 'bio#create'
    post 'update' => 'bio#update'
  end

  devise_for :users
end

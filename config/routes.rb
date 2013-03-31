Biographer::Application.routes.draw do
  root to: 'pages#index'
  get "pages/index"

  devise_for :users
end

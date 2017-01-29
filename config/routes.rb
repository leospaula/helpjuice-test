Rails.application.routes.draw do
  root 'articles#index'
  resources :articles do
    collection do
      get :autocomplete
    end
  end
end

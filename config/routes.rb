Rails.application.routes.draw do
  root 'articles#index'
  resources :articles, only: [:index] do
    collection do
      get :autocomplete
    end
  end
  resources :searches, only: [] do
  	collection do
  		get :overview
  		get :stream
      get :recent
      get :clear_stats
  	end
  end
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: "battles#index"
resources :battles, only: [:index, :new, :create, :destroy] do
  collection do
    get 'search'
  end
end
end

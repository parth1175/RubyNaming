Rails.application.routes.draw do
  resources :rnamings do
    resources :categories
  end

root "rnamings#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :rnamings do
    resources :categories
  end

  get "/rnamings/:rnaming_id/categories/:id", to: "categories#show", as: "ShowCategory"


root "rnamings#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

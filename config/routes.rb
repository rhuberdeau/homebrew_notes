Rails.application.routes.draw do
  resources :recipes do
    resources :hop_schedules
    resources :recipe_malts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

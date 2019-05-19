Rails.application.routes.draw do
  get 'portal/index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'portal#index'

  get 'produtos/search', to:"produtos#search"
  resources :produtos

end

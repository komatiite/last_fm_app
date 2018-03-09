Rails.application.routes.draw do
  get 'tags', to: 'tags#index', as: 'tags'
  get 'tags/:id', to: 'tags#show', as: 'tag'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

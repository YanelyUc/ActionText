Rails.application.routes.draw do
  delete '/users/:id',  to: 'users#destroy', as: 'destroy'
  post '/users/:id/active', to: 'users#active', as: 'active'
  post '/users/:id/inactive', to: 'users#inactive', as: 'inactive'

  resources :users, except: :destroy do 
    collection do
      get 'recently'
    end
  end
   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

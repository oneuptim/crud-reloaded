Rails.application.routes.draw do

  get '/' => 'times#index'

  get '/users' => 'users#index'

  get '/users/new' => 'users#new'

  post 'users/create' => 'users#create'

  get 'users/:id' => 'users#show'

  get 'users/:id/edit' => 'users#edit'

  post 'users/update/:id' => 'users#update'

  post 'users/:id' => 'users#destroy'

  get 'users/total'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

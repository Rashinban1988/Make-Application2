Rails.application.routes.draw do
  get 'home/about', to: 'homes#about'
  root to: "homes#top"
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  resources :books, only:[:new, :index, :show, :edit, :create, :update, :destroy]
  resources :users, only:[:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

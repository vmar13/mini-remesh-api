Rails.application.routes.draw do
  get 'thoughts/index'
  get 'thoughts/show'
  get 'thoughts/new'
  get 'thoughts/create'
  get 'messages/index'
  get 'messages/show'
  get 'messages/new'
  get 'messages/create'
  get 'conversations/index'
  get 'conversations/show'
  get 'conversations/new'
  get 'conversations/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :conversations
      resources :messages
      resources :thoughts
    end 
  end 

end
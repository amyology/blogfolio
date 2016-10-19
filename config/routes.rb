Rails.application.routes.draw do
  devise_for :admins
  
  root to: "index#index"
  get '/' => 'index#index'

  get '/messages' => 'messages#index'
  get '/messages/new' => 'messages#new'
  post '/messages/' => 'messages#create'
  get '/messages/:id' => 'messages#show'
  delete '/messages/:id' => 'messages#destroy'
  
  get '/sent' => 'messages#sent'
end

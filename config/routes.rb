Rails.application.routes.draw do
  get '/' => 'index#index'

  get '/messages' => 'messages#index'
  post '/messages/' => 'messages#create'
  get '/messages/:id' => 'messages#show'
  delete '/messages/:id' => 'messages#destroy'
  
  get '/sent' => 'messages#sent'
end

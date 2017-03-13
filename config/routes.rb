Rails.application.routes.draw do
  devise_for :admins
  
  root to: "pages#home"

  resources :messages
  get '/sent' => 'messages#sent'

  get '/colorcrush' => 'pages#colorcrush'
  get '/jieyisushi' => 'pages#jieyisushi'
  get '/sparkstart' => 'pages#sparkstart'
end

Rails.application.routes.draw do
  devise_for :admins
  
  root to: "pages#home"

  resources :messages, except: [:edit, :update]
  get '/sent' => 'messages#sent'

  get '/colorcrush' => 'pages#colorcrush'
  get '/jieyisushi' => 'pages#jieyisushi'
  get '/sparkstart' => 'pages#sparkstart'
  get '/buymenow' => 'pages#buymenow'
  get '/paramount' => 'pages#paramount'

  resources :posts
  get '/blog' => 'posts#index'
  get '/blog/archive' => 'posts#archive'

  resources :comments, except: [:show, :edit]
  
  get '/v1' => 'home#v1'

  namespace :v1 do
    root to: "home#index"
  end

end

Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'main#top' 
  get 'top' => 'main#top'
  get 'top/new'  =>  'main#new' 
  post 'top'      =>  'main#create' 
  
  get 'page/1'  =>  'page#page1'
  post 'page/1' =>  'page#create' 
  patch 'page/1'  => 'page#update'

  get 'page/2'  =>  'page#page2'
  post 'page/2' =>  'page#create' 
  patch 'page/2'  => 'page#update2'

  get 'page/3'  =>  'page#page3'
  post 'page/3' =>  'page#create' 
  patch 'page/3'  => 'page#update3'

  get 'page/4'  =>  'page#page4'
  post 'page/4' =>  'page#create' 
  patch 'page/4'  => 'page#update4'

  get 'page/5'  =>  'page#page5'
  post 'page/5' =>  'page#create' 
  patch 'page/5'  => 'page#update5'



end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/top' => "book#top"
  get '/book/new' => "book#new"
  get '/book/:id/edit' => "book#edit"
  post '/book/create' => "book#create"
  post '/book/:id/update' => "book#update"
  post '/book/:id/destroy' => "book#destroy" 

  get '/genre/new' => "genre#new"
  get '/genre/:id/edit' => "genre#edit" 
  post '/genre/create' => "genre#create"
  post '/genre/:id/update' => "genre#update"
  post '/genre/:id/destroy' => "genre#destroy" 

  get '/publisher/new' => "publisher#new"
  get '/publisher/:id/edit' => "publisher#edit" 
  post '/publisher/create' => "publisher#create"
  post '/publisher/:id/update' => "publisher#update"
  post '/publisher/:id/destroy' => "publisher#destroy" 
  

end

Rails.application.routes.draw do
  #Creating
    get '/new_idea' => 'application#new'
    get '/create_idea' => 'application#create'
  
  #Reading
    get '/ideas/:id' => 'application#show'
    get '/ideas' => 'application#index'
  
  
  #Updating
    get '/ideas/:id/edit' => 'application#edit'
    get'/update_idea/:id' => 'application#update'
  
  #Deleting
    get '/idea/:id/destroy' => 'application#destroy'
end
